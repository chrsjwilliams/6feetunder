Shader "Unlit Master"
{
    Properties
    {
        Vector4_59D9B7DE("RotateProjection", Vector) = (1,0,0,0)
Vector1_C24F477F("NoiseScale", Float) = 10
Vector1_3F53ED5D("NoiseSpeed", Float) = 0.1
Vector1_34A2131D("NoiseHeight", Float) = 100
Vector4_BD02EA1F("NoiseRemap", Vector) = (0,1,-1,1)
Color_94B19C9E("ColorValley", Color) = (0,0,0,0)
Color_1325E6EB("ColorPeak", Color) = (1,1,1,0)
Vector1_B73C588D("NoiseEdge1", Float) = 0
Vector1_157C4927("NoiseEdge2", Float) = 1
Vector1_31818DD2("NoisePowerStrength", Float) = 2
Vector1_2E449449("BaseScale", Float) = 5
Vector1_1100DBB4("BaseSpeed", Float) = 0.2
Vector1_745E6F83("BaseStrength", Float) = 2
Vector1_8F0E7C7D("EmissionStrength", Float) = 2
Vector1_835232BE("Curvature", Float) = 1
Vector1_EB822D68("FresnelPower", Float) = 1
Vector1_B624F6DD("FresnelOpacity", Float) = 1
Vector1_528AE1A1("FadeDepth", Float) = 100
[HideInInspector] _EmissionColor("Color", Color) = (1,1,1,1)

    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="HDRenderPipeline"
            "RenderType"="HDUnlitShader"
            "Queue"="Transparent+0"
        }
        
        Pass
        {
            // based on HDUnlitPass.template
            Name "META"
            Tags { "LightMode" = "META" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            Blend One OneMinusSrcAlpha
        
            Cull Off
        
            ZTest LEqual
        
            ZWrite Off
        
            ZClip [_ZClip]
        
            // Default Stencil
        
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            //enable GPU instancing support
            #pragma multi_compile_instancing
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define _BLENDMODE_ALPHA 1
            #define _ENABLE_FOG_ON_TRANSPARENT 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_LIGHT_TRANSPORT
                #define REQUIRE_DEPTH_TEXTURE
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define HAVE_MESH_MODIFICATION
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            float3 normalOS : NORMAL; // optional
            float4 tangentOS : TANGENT; // optional
            float4 uv0 : TEXCOORD0; // optional
            float4 uv1 : TEXCOORD1; // optional
            float4 uv2 : TEXCOORD2; // optional
            float4 color : COLOR; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            float3 positionRWS; // optional
            float3 normalWS; // optional
            float4 tangentWS; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToPS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            float4 interp02 : TEXCOORD2; // auto-packed
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            output.interp02.xyzw = input.tangentWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            output.tangentWS = input.interp02.xyzw;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 Vector4_59D9B7DE;
                    float Vector1_C24F477F;
                    float Vector1_3F53ED5D;
                    float Vector1_34A2131D;
                    float4 Vector4_BD02EA1F;
                    float4 Color_94B19C9E;
                    float4 Color_1325E6EB;
                    float Vector1_B73C588D;
                    float Vector1_157C4927;
                    float Vector1_31818DD2;
                    float Vector1_2E449449;
                    float Vector1_1100DBB4;
                    float Vector1_745E6F83;
                    float Vector1_8F0E7C7D;
                    float Vector1_835232BE;
                    float Vector1_EB822D68;
                    float Vector1_B624F6DD;
                    float Vector1_528AE1A1;
                    float4 _EmissionColor;
                    CBUFFER_END
                
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs {
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 WorldSpaceNormal; // optional
                        float3 WorldSpaceViewDirection; // optional
                        float3 WorldSpacePosition; // optional
                        float4 ScreenPosition; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Color;
                        float Alpha;
                        float AlphaClipThreshold;
                        float3 Emission;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Rotate_About_Axis_Degrees_float(float3 In, float3 Axis, float Rotation, out float3 Out)
                    {
                        Rotation = radians(Rotation);
                
                        float s = sin(Rotation);
                        float c = cos(Rotation);
                        float one_minus_c = 1.0 - c;
                        
                        Axis = normalize(Axis);
                
                        float3x3 rot_mat = { one_minus_c * Axis.x * Axis.x + c,            one_minus_c * Axis.x * Axis.y - Axis.z * s,     one_minus_c * Axis.z * Axis.x + Axis.y * s,
                                                   one_minus_c * Axis.x * Axis.y + Axis.z * s,   one_minus_c * Axis.y * Axis.y + c,              one_minus_c * Axis.y * Axis.z - Axis.x * s,
                                                   one_minus_c * Axis.z * Axis.x - Axis.y * s,   one_minus_c * Axis.y * Axis.z + Axis.x * s,     one_minus_c * Axis.z * Axis.z + c
                                                 };
                
                        Out = mul(rot_mat,  In);
                    }
                
                    void Unity_Multiply_float (float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                
    float2 unity_gradientNoise_dir(float2 p)
    {
        // Permutation and hashing used in webgl-nosie goo.gl/pX7HtC
        p = p % 289;
        float x = (34 * p.x + 1) * p.x % 289 + p.y;
        x = (34 * x + 1) * x % 289;
        x = frac(x / 41) * 2 - 1;
        return normalize(float2(x - floor(x + 0.5), abs(x) - 0.5));
    }

                
    float unity_gradientNoise(float2 p)
    {
        float2 ip = floor(p);
        float2 fp = frac(p);
        float d00 = dot(unity_gradientNoise_dir(ip), fp);
        float d01 = dot(unity_gradientNoise_dir(ip + float2(0, 1)), fp - float2(0, 1));
        float d10 = dot(unity_gradientNoise_dir(ip + float2(1, 0)), fp - float2(1, 0));
        float d11 = dot(unity_gradientNoise_dir(ip + float2(1, 1)), fp - float2(1, 1));
        fp = fp * fp * fp * (fp * (fp * 6 - 15) + 10);
        return lerp(lerp(d00, d01, fp.y), lerp(d10, d11, fp.y), fp.x);
    }

                    void Unity_GradientNoise_float(float2 UV, float Scale, out float Out)
                    { Out = unity_gradientNoise(UV * Scale) + 0.5; }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Smoothstep_float(float Edge1, float Edge2, float In, out float Out)
                    {
                        Out = smoothstep(Edge1, Edge2, In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_FresnelEffect_float(float3 Normal, float3 ViewDir, float Power, out float Out)
                    {
                        Out = pow((1.0 - saturate(dot(normalize(Normal), normalize(ViewDir)))), Power);
                    }
                
                    void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_SceneDepth_Eye_float(float4 UV, out float Out)
                    {
                        Out = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH(UV.xy), _ZBufferParams);
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Multiply_float (float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_213666C1_Out = Color_1325E6EB;
                        float4 _Property_8104B95A_Out = Color_94B19C9E;
                        float _Property_721BEDFE_Out = Vector1_B73C588D;
                        float _Property_542926D1_Out = Vector1_157C4927;
                        float4 _Property_CB1E74E5_Out = Vector4_59D9B7DE;
                        float _Split_250219A7_R = _Property_CB1E74E5_Out[0];
                        float _Split_250219A7_G = _Property_CB1E74E5_Out[1];
                        float _Split_250219A7_B = _Property_CB1E74E5_Out[2];
                        float _Split_250219A7_A = _Property_CB1E74E5_Out[3];
                        float3 _RotateAboutAxis_B05F188_Out;
                        Unity_Rotate_About_Axis_Degrees_float(IN.WorldSpacePosition, (_Property_CB1E74E5_Out.xyz), _Split_250219A7_A, _RotateAboutAxis_B05F188_Out);
                        float _Property_7EB05FC3_Out = Vector1_3F53ED5D;
                        float _Multiply_C7BD5FE_Out;
                        Unity_Multiply_float(_Time.y, _Property_7EB05FC3_Out, _Multiply_C7BD5FE_Out);
                    
                        float2 _TilingAndOffset_4B04F07_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_C7BD5FE_Out.xx), _TilingAndOffset_4B04F07_Out);
                        float _Property_B8C30C6B_Out = Vector1_C24F477F;
                        float _GradientNoise_2D871EFC_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4B04F07_Out, _Property_B8C30C6B_Out, _GradientNoise_2D871EFC_Out);
                        float2 _TilingAndOffset_DC49C30D_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), float2 (0,0), _TilingAndOffset_DC49C30D_Out);
                        float _GradientNoise_E851A6F5_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_DC49C30D_Out, _Property_B8C30C6B_Out, _GradientNoise_E851A6F5_Out);
                        float _Add_FBEF6A05_Out;
                        Unity_Add_float(_GradientNoise_2D871EFC_Out, _GradientNoise_E851A6F5_Out, _Add_FBEF6A05_Out);
                        float _Divide_84323487_Out;
                        Unity_Divide_float(_Add_FBEF6A05_Out, 2, _Divide_84323487_Out);
                        float _Saturate_69AD2EA1_Out;
                        Unity_Saturate_float(_Divide_84323487_Out, _Saturate_69AD2EA1_Out);
                        float _Property_C51BB6F2_Out = Vector1_31818DD2;
                        float _Power_F9750E9_Out;
                        Unity_Power_float(_Saturate_69AD2EA1_Out, _Property_C51BB6F2_Out, _Power_F9750E9_Out);
                        float4 _Property_81C077A3_Out = Vector4_BD02EA1F;
                        float _Split_20EE5AF2_R = _Property_81C077A3_Out[0];
                        float _Split_20EE5AF2_G = _Property_81C077A3_Out[1];
                        float _Split_20EE5AF2_B = _Property_81C077A3_Out[2];
                        float _Split_20EE5AF2_A = _Property_81C077A3_Out[3];
                        float4 _Combine_4EFE1DF1_RGBA;
                        float3 _Combine_4EFE1DF1_RGB;
                        float2 _Combine_4EFE1DF1_RG;
                        Unity_Combine_float(_Split_20EE5AF2_R, _Split_20EE5AF2_G, 0, 0, _Combine_4EFE1DF1_RGBA, _Combine_4EFE1DF1_RGB, _Combine_4EFE1DF1_RG);
                        float4 _Combine_E24CA7A3_RGBA;
                        float3 _Combine_E24CA7A3_RGB;
                        float2 _Combine_E24CA7A3_RG;
                        Unity_Combine_float(_Split_20EE5AF2_B, _Split_20EE5AF2_A, 0, 0, _Combine_E24CA7A3_RGBA, _Combine_E24CA7A3_RGB, _Combine_E24CA7A3_RG);
                        float _Remap_72555603_Out;
                        Unity_Remap_float(_Power_F9750E9_Out, _Combine_4EFE1DF1_RG, _Combine_E24CA7A3_RG, _Remap_72555603_Out);
                        float _Absolute_5824C78A_Out;
                        Unity_Absolute_float(_Remap_72555603_Out, _Absolute_5824C78A_Out);
                        float _Smoothstep_A5008413_Out;
                        Unity_Smoothstep_float(_Property_721BEDFE_Out, _Property_542926D1_Out, _Absolute_5824C78A_Out, _Smoothstep_A5008413_Out);
                        float _Property_80BD6155_Out = Vector1_1100DBB4;
                        float _Multiply_14B0964F_Out;
                        Unity_Multiply_float(_Time.y, _Property_80BD6155_Out, _Multiply_14B0964F_Out);
                    
                        float2 _TilingAndOffset_4829AD5F_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_14B0964F_Out.xx), _TilingAndOffset_4829AD5F_Out);
                        float _Property_66A9A0A5_Out = Vector1_2E449449;
                        float _GradientNoise_93609DB7_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4829AD5F_Out, _Property_66A9A0A5_Out, _GradientNoise_93609DB7_Out);
                        float _Property_DBEBFF0A_Out = Vector1_745E6F83;
                        float _Multiply_5AF384A_Out;
                        Unity_Multiply_float(_GradientNoise_93609DB7_Out, _Property_DBEBFF0A_Out, _Multiply_5AF384A_Out);
                    
                        float _Add_CFD3849F_Out;
                        Unity_Add_float(_Smoothstep_A5008413_Out, _Multiply_5AF384A_Out, _Add_CFD3849F_Out);
                        float _Add_E47D30B3_Out;
                        Unity_Add_float(1, _Property_DBEBFF0A_Out, _Add_E47D30B3_Out);
                        float _Divide_8D5BD6F7_Out;
                        Unity_Divide_float(_Add_CFD3849F_Out, _Add_E47D30B3_Out, _Divide_8D5BD6F7_Out);
                        float4 _Lerp_7F29C29D_Out;
                        Unity_Lerp_float4(_Property_213666C1_Out, _Property_8104B95A_Out, (_Divide_8D5BD6F7_Out.xxxx), _Lerp_7F29C29D_Out);
                        float _Property_A2D9BF0E_Out = Vector1_EB822D68;
                        float _FresnelEffect_94E4DF51_Out;
                        Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Property_A2D9BF0E_Out, _FresnelEffect_94E4DF51_Out);
                        float _Multiply_8B357C9C_Out;
                        Unity_Multiply_float(_Divide_8D5BD6F7_Out, _FresnelEffect_94E4DF51_Out, _Multiply_8B357C9C_Out);
                    
                        float _Property_598EB6C9_Out = Vector1_B624F6DD;
                        float _Multiply_5F15B114_Out;
                        Unity_Multiply_float(_Multiply_8B357C9C_Out, _Property_598EB6C9_Out, _Multiply_5F15B114_Out);
                    
                        float4 _Add_F9D58D82_Out;
                        Unity_Add_float4(_Lerp_7F29C29D_Out, (_Multiply_5F15B114_Out.xxxx), _Add_F9D58D82_Out);
                        float _SceneDepth_A2811005_Out;
                        Unity_SceneDepth_Eye_float(float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0), _SceneDepth_A2811005_Out);
                        float4 _ScreenPosition_D82CA084_Out = IN.ScreenPosition;
                        float _Split_12E9A2F2_R = _ScreenPosition_D82CA084_Out[0];
                        float _Split_12E9A2F2_G = _ScreenPosition_D82CA084_Out[1];
                        float _Split_12E9A2F2_B = _ScreenPosition_D82CA084_Out[2];
                        float _Split_12E9A2F2_A = _ScreenPosition_D82CA084_Out[3];
                        float _Subtract_89DE7918_Out;
                        Unity_Subtract_float(_Split_12E9A2F2_A, 1, _Subtract_89DE7918_Out);
                        float _Subtract_A3B7B8A_Out;
                        Unity_Subtract_float(_SceneDepth_A2811005_Out, _Subtract_89DE7918_Out, _Subtract_A3B7B8A_Out);
                        float _Property_E2299BE7_Out = Vector1_528AE1A1;
                        float _Divide_F5E23441_Out;
                        Unity_Divide_float(_Subtract_A3B7B8A_Out, _Property_E2299BE7_Out, _Divide_F5E23441_Out);
                        float _Saturate_5EBBB63B_Out;
                        Unity_Saturate_float(_Divide_F5E23441_Out, _Saturate_5EBBB63B_Out);
                        float _Property_B8F9BE5A_Out = Vector1_8F0E7C7D;
                        float4 _Multiply_B33B0E9_Out;
                        Unity_Multiply_float(_Add_F9D58D82_Out, (_Property_B8F9BE5A_Out.xxxx), _Multiply_B33B0E9_Out);
                    
                        surface.Color = (_Add_F9D58D82_Out.xyz);
                        surface.Alpha = _Saturate_5EBBB63B_Out;
                        surface.AlphaClipThreshold = 0.5;
                        surface.Emission = (_Multiply_B33B0E9_Out.xyz);
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
        //-------------------------------------------------------------------------------------
        
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        
            return output;
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input)
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
        
            // evaluate vertex graph
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        
            // copy graph output to the results
        
            return input;
        }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.worldToTangent = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                output.positionRWS = input.positionRWS;
                output.worldToTangent = BuildWorldToTangent(input.tangentWS, input.normalWS);
                #if SHADER_STAGE_FRAGMENT
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.worldToTangent[2].xyz);
                output.WorldSpaceViewDirection =     normalize(viewWS);
                output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
                surfaceData.color = surfaceDescription.Color;
        
        #if defined(DEBUG_DISPLAY)
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO
                }
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
        
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                // Builtin Data
                ZERO_INITIALIZE(BuiltinData, builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #endif
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassLightTransport.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDUnlitPass.template
            Name "ShadowCaster"
            Tags { "LightMode" = "ShadowCaster" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            Blend One Zero
        
            Cull Off
        
            ZTest LEqual
        
            ZWrite On
        
            ZClip [_ZClip]
        
            // Default Stencil
        
            ColorMask 0
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            //enable GPU instancing support
            #pragma multi_compile_instancing
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define _BLENDMODE_ALPHA 1
            #define _ENABLE_FOG_ON_TRANSPARENT 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_SHADOWS
                #define USE_LEGACY_UNITY_MATRIX_VARIABLES
                #define REQUIRE_DEPTH_TEXTURE
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define VARYINGS_NEED_POSITION_WS
            #define HAVE_MESH_MODIFICATION
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            float3 normalOS : NORMAL; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            float3 positionRWS; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToPS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.interp00.xyz = input.positionRWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.positionRWS = input.interp00.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 Vector4_59D9B7DE;
                    float Vector1_C24F477F;
                    float Vector1_3F53ED5D;
                    float Vector1_34A2131D;
                    float4 Vector4_BD02EA1F;
                    float4 Color_94B19C9E;
                    float4 Color_1325E6EB;
                    float Vector1_B73C588D;
                    float Vector1_157C4927;
                    float Vector1_31818DD2;
                    float Vector1_2E449449;
                    float Vector1_1100DBB4;
                    float Vector1_745E6F83;
                    float Vector1_8F0E7C7D;
                    float Vector1_835232BE;
                    float Vector1_EB822D68;
                    float Vector1_B624F6DD;
                    float Vector1_528AE1A1;
                    float4 _EmissionColor;
                    CBUFFER_END
                
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs {
                        float3 ObjectSpaceNormal; // optional
                        float3 WorldSpaceNormal; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 WorldSpacePosition; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 Position;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 WorldSpacePosition; // optional
                        float4 ScreenPosition; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_SceneDepth_Eye_float(float4 UV, out float Out)
                    {
                        Out = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH(UV.xy), _ZBufferParams);
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Distance_float3(float3 A, float3 B, out float Out)
                    {
                        Out = distance(A, B);
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Multiply_float (float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Rotate_About_Axis_Degrees_float(float3 In, float3 Axis, float Rotation, out float3 Out)
                    {
                        Rotation = radians(Rotation);
                
                        float s = sin(Rotation);
                        float c = cos(Rotation);
                        float one_minus_c = 1.0 - c;
                        
                        Axis = normalize(Axis);
                
                        float3x3 rot_mat = { one_minus_c * Axis.x * Axis.x + c,            one_minus_c * Axis.x * Axis.y - Axis.z * s,     one_minus_c * Axis.z * Axis.x + Axis.y * s,
                                                   one_minus_c * Axis.x * Axis.y + Axis.z * s,   one_minus_c * Axis.y * Axis.y + c,              one_minus_c * Axis.y * Axis.z - Axis.x * s,
                                                   one_minus_c * Axis.z * Axis.x - Axis.y * s,   one_minus_c * Axis.y * Axis.z + Axis.x * s,     one_minus_c * Axis.z * Axis.z + c
                                                 };
                
                        Out = mul(rot_mat,  In);
                    }
                
                    void Unity_Multiply_float (float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                
    float2 unity_gradientNoise_dir(float2 p)
    {
        // Permutation and hashing used in webgl-nosie goo.gl/pX7HtC
        p = p % 289;
        float x = (34 * p.x + 1) * p.x % 289 + p.y;
        x = (34 * x + 1) * x % 289;
        x = frac(x / 41) * 2 - 1;
        return normalize(float2(x - floor(x + 0.5), abs(x) - 0.5));
    }

                
    float unity_gradientNoise(float2 p)
    {
        float2 ip = floor(p);
        float2 fp = frac(p);
        float d00 = dot(unity_gradientNoise_dir(ip), fp);
        float d01 = dot(unity_gradientNoise_dir(ip + float2(0, 1)), fp - float2(0, 1));
        float d10 = dot(unity_gradientNoise_dir(ip + float2(1, 0)), fp - float2(1, 0));
        float d11 = dot(unity_gradientNoise_dir(ip + float2(1, 1)), fp - float2(1, 1));
        fp = fp * fp * fp * (fp * (fp * 6 - 15) + 10);
        return lerp(lerp(d00, d01, fp.y), lerp(d10, d11, fp.y), fp.x);
    }

                    void Unity_GradientNoise_float(float2 UV, float Scale, out float Out)
                    { Out = unity_gradientNoise(UV * Scale) + 0.5; }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Smoothstep_float(float Edge1, float Edge2, float In, out float Out)
                    {
                        Out = smoothstep(Edge1, Edge2, In);
                    }
                
                    void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A + B;
                    }
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float _Distance_DDD894F7_Out;
                        Unity_Distance_float3(SHADERGRAPH_OBJECT_POSITION, IN.WorldSpacePosition, _Distance_DDD894F7_Out);
                        float _Property_E6B08453_Out = Vector1_835232BE;
                        float _Divide_660CEBD_Out;
                        Unity_Divide_float(_Distance_DDD894F7_Out, _Property_E6B08453_Out, _Divide_660CEBD_Out);
                        float _Power_B0115474_Out;
                        Unity_Power_float(_Divide_660CEBD_Out, 3, _Power_B0115474_Out);
                        float3 _Multiply_EC2FDFD_Out;
                        Unity_Multiply_float(IN.WorldSpaceNormal, (_Power_B0115474_Out.xxx), _Multiply_EC2FDFD_Out);
                    
                        float _Property_721BEDFE_Out = Vector1_B73C588D;
                        float _Property_542926D1_Out = Vector1_157C4927;
                        float4 _Property_CB1E74E5_Out = Vector4_59D9B7DE;
                        float _Split_250219A7_R = _Property_CB1E74E5_Out[0];
                        float _Split_250219A7_G = _Property_CB1E74E5_Out[1];
                        float _Split_250219A7_B = _Property_CB1E74E5_Out[2];
                        float _Split_250219A7_A = _Property_CB1E74E5_Out[3];
                        float3 _RotateAboutAxis_B05F188_Out;
                        Unity_Rotate_About_Axis_Degrees_float(IN.WorldSpacePosition, (_Property_CB1E74E5_Out.xyz), _Split_250219A7_A, _RotateAboutAxis_B05F188_Out);
                        float _Property_7EB05FC3_Out = Vector1_3F53ED5D;
                        float _Multiply_C7BD5FE_Out;
                        Unity_Multiply_float(_Time.y, _Property_7EB05FC3_Out, _Multiply_C7BD5FE_Out);
                    
                        float2 _TilingAndOffset_4B04F07_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_C7BD5FE_Out.xx), _TilingAndOffset_4B04F07_Out);
                        float _Property_B8C30C6B_Out = Vector1_C24F477F;
                        float _GradientNoise_2D871EFC_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4B04F07_Out, _Property_B8C30C6B_Out, _GradientNoise_2D871EFC_Out);
                        float2 _TilingAndOffset_DC49C30D_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), float2 (0,0), _TilingAndOffset_DC49C30D_Out);
                        float _GradientNoise_E851A6F5_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_DC49C30D_Out, _Property_B8C30C6B_Out, _GradientNoise_E851A6F5_Out);
                        float _Add_FBEF6A05_Out;
                        Unity_Add_float(_GradientNoise_2D871EFC_Out, _GradientNoise_E851A6F5_Out, _Add_FBEF6A05_Out);
                        float _Divide_84323487_Out;
                        Unity_Divide_float(_Add_FBEF6A05_Out, 2, _Divide_84323487_Out);
                        float _Saturate_69AD2EA1_Out;
                        Unity_Saturate_float(_Divide_84323487_Out, _Saturate_69AD2EA1_Out);
                        float _Property_C51BB6F2_Out = Vector1_31818DD2;
                        float _Power_F9750E9_Out;
                        Unity_Power_float(_Saturate_69AD2EA1_Out, _Property_C51BB6F2_Out, _Power_F9750E9_Out);
                        float4 _Property_81C077A3_Out = Vector4_BD02EA1F;
                        float _Split_20EE5AF2_R = _Property_81C077A3_Out[0];
                        float _Split_20EE5AF2_G = _Property_81C077A3_Out[1];
                        float _Split_20EE5AF2_B = _Property_81C077A3_Out[2];
                        float _Split_20EE5AF2_A = _Property_81C077A3_Out[3];
                        float4 _Combine_4EFE1DF1_RGBA;
                        float3 _Combine_4EFE1DF1_RGB;
                        float2 _Combine_4EFE1DF1_RG;
                        Unity_Combine_float(_Split_20EE5AF2_R, _Split_20EE5AF2_G, 0, 0, _Combine_4EFE1DF1_RGBA, _Combine_4EFE1DF1_RGB, _Combine_4EFE1DF1_RG);
                        float4 _Combine_E24CA7A3_RGBA;
                        float3 _Combine_E24CA7A3_RGB;
                        float2 _Combine_E24CA7A3_RG;
                        Unity_Combine_float(_Split_20EE5AF2_B, _Split_20EE5AF2_A, 0, 0, _Combine_E24CA7A3_RGBA, _Combine_E24CA7A3_RGB, _Combine_E24CA7A3_RG);
                        float _Remap_72555603_Out;
                        Unity_Remap_float(_Power_F9750E9_Out, _Combine_4EFE1DF1_RG, _Combine_E24CA7A3_RG, _Remap_72555603_Out);
                        float _Absolute_5824C78A_Out;
                        Unity_Absolute_float(_Remap_72555603_Out, _Absolute_5824C78A_Out);
                        float _Smoothstep_A5008413_Out;
                        Unity_Smoothstep_float(_Property_721BEDFE_Out, _Property_542926D1_Out, _Absolute_5824C78A_Out, _Smoothstep_A5008413_Out);
                        float _Property_80BD6155_Out = Vector1_1100DBB4;
                        float _Multiply_14B0964F_Out;
                        Unity_Multiply_float(_Time.y, _Property_80BD6155_Out, _Multiply_14B0964F_Out);
                    
                        float2 _TilingAndOffset_4829AD5F_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_14B0964F_Out.xx), _TilingAndOffset_4829AD5F_Out);
                        float _Property_66A9A0A5_Out = Vector1_2E449449;
                        float _GradientNoise_93609DB7_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4829AD5F_Out, _Property_66A9A0A5_Out, _GradientNoise_93609DB7_Out);
                        float _Property_DBEBFF0A_Out = Vector1_745E6F83;
                        float _Multiply_5AF384A_Out;
                        Unity_Multiply_float(_GradientNoise_93609DB7_Out, _Property_DBEBFF0A_Out, _Multiply_5AF384A_Out);
                    
                        float _Add_CFD3849F_Out;
                        Unity_Add_float(_Smoothstep_A5008413_Out, _Multiply_5AF384A_Out, _Add_CFD3849F_Out);
                        float _Add_E47D30B3_Out;
                        Unity_Add_float(1, _Property_DBEBFF0A_Out, _Add_E47D30B3_Out);
                        float _Divide_8D5BD6F7_Out;
                        Unity_Divide_float(_Add_CFD3849F_Out, _Add_E47D30B3_Out, _Divide_8D5BD6F7_Out);
                        float3 _Multiply_E1FA8CEB_Out;
                        Unity_Multiply_float(IN.ObjectSpaceNormal, (_Divide_8D5BD6F7_Out.xxx), _Multiply_E1FA8CEB_Out);
                    
                        float _Property_1DD37380_Out = Vector1_34A2131D;
                        float3 _Multiply_4CA709E6_Out;
                        Unity_Multiply_float(_Multiply_E1FA8CEB_Out, (_Property_1DD37380_Out.xxx), _Multiply_4CA709E6_Out);
                    
                        float3 _Add_31FCBD62_Out;
                        Unity_Add_float3(IN.ObjectSpacePosition, _Multiply_4CA709E6_Out, _Add_31FCBD62_Out);
                        float3 _Add_E21A7CD8_Out;
                        Unity_Add_float3(_Multiply_EC2FDFD_Out, _Add_31FCBD62_Out, _Add_E21A7CD8_Out);
                        description.Position = _Add_E21A7CD8_Out;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float _SceneDepth_A2811005_Out;
                        Unity_SceneDepth_Eye_float(float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0), _SceneDepth_A2811005_Out);
                        float4 _ScreenPosition_D82CA084_Out = IN.ScreenPosition;
                        float _Split_12E9A2F2_R = _ScreenPosition_D82CA084_Out[0];
                        float _Split_12E9A2F2_G = _ScreenPosition_D82CA084_Out[1];
                        float _Split_12E9A2F2_B = _ScreenPosition_D82CA084_Out[2];
                        float _Split_12E9A2F2_A = _ScreenPosition_D82CA084_Out[3];
                        float _Subtract_89DE7918_Out;
                        Unity_Subtract_float(_Split_12E9A2F2_A, 1, _Subtract_89DE7918_Out);
                        float _Subtract_A3B7B8A_Out;
                        Unity_Subtract_float(_SceneDepth_A2811005_Out, _Subtract_89DE7918_Out, _Subtract_A3B7B8A_Out);
                        float _Property_E2299BE7_Out = Vector1_528AE1A1;
                        float _Divide_F5E23441_Out;
                        Unity_Divide_float(_Subtract_A3B7B8A_Out, _Property_E2299BE7_Out, _Divide_F5E23441_Out);
                        float _Saturate_5EBBB63B_Out;
                        Unity_Saturate_float(_Divide_F5E23441_Out, _Saturate_5EBBB63B_Out);
                        surface.Alpha = _Saturate_5EBBB63B_Out;
                        surface.AlphaClipThreshold = 0.5;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
        //-------------------------------------------------------------------------------------
        
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =           input.normalOS;
            output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
            output.ObjectSpacePosition =         input.positionOS;
            output.WorldSpacePosition =          GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
        
            return output;
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input)
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
        
            // evaluate vertex graph
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
        
            return input;
        }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.worldToTangent = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                output.positionRWS = input.positionRWS;
                #if SHADER_STAGE_FRAGMENT
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
        
        #if defined(DEBUG_DISPLAY)
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO
                }
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
        
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                // Builtin Data
                ZERO_INITIALIZE(BuiltinData, builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #endif
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDUnlitPass.template
            Name "SceneSelectionPass"
            Tags { "LightMode" = "SceneSelectionPass" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            Blend One OneMinusSrcAlpha
        
            Cull Off
        
            ZTest LEqual
        
            ZWrite Off
        
            ZClip [_ZClip]
        
            // Default Stencil
        
            ColorMask 0
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            //enable GPU instancing support
            #pragma multi_compile_instancing
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define _BLENDMODE_ALPHA 1
            #define _ENABLE_FOG_ON_TRANSPARENT 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_DEPTH_ONLY
                #define SCENESELECTIONPASS
                #define REQUIRE_DEPTH_TEXTURE
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define VARYINGS_NEED_POSITION_WS
            #define HAVE_MESH_MODIFICATION
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            float3 normalOS : NORMAL; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            float3 positionRWS; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToPS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.interp00.xyz = input.positionRWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.positionRWS = input.interp00.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 Vector4_59D9B7DE;
                    float Vector1_C24F477F;
                    float Vector1_3F53ED5D;
                    float Vector1_34A2131D;
                    float4 Vector4_BD02EA1F;
                    float4 Color_94B19C9E;
                    float4 Color_1325E6EB;
                    float Vector1_B73C588D;
                    float Vector1_157C4927;
                    float Vector1_31818DD2;
                    float Vector1_2E449449;
                    float Vector1_1100DBB4;
                    float Vector1_745E6F83;
                    float Vector1_8F0E7C7D;
                    float Vector1_835232BE;
                    float Vector1_EB822D68;
                    float Vector1_B624F6DD;
                    float Vector1_528AE1A1;
                    float4 _EmissionColor;
                    CBUFFER_END
                
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs {
                        float3 ObjectSpaceNormal; // optional
                        float3 WorldSpaceNormal; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 WorldSpacePosition; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 Position;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 WorldSpacePosition; // optional
                        float4 ScreenPosition; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float Alpha;
                        float AlphaClipThreshold;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_SceneDepth_Eye_float(float4 UV, out float Out)
                    {
                        Out = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH(UV.xy), _ZBufferParams);
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Distance_float3(float3 A, float3 B, out float Out)
                    {
                        Out = distance(A, B);
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Multiply_float (float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Rotate_About_Axis_Degrees_float(float3 In, float3 Axis, float Rotation, out float3 Out)
                    {
                        Rotation = radians(Rotation);
                
                        float s = sin(Rotation);
                        float c = cos(Rotation);
                        float one_minus_c = 1.0 - c;
                        
                        Axis = normalize(Axis);
                
                        float3x3 rot_mat = { one_minus_c * Axis.x * Axis.x + c,            one_minus_c * Axis.x * Axis.y - Axis.z * s,     one_minus_c * Axis.z * Axis.x + Axis.y * s,
                                                   one_minus_c * Axis.x * Axis.y + Axis.z * s,   one_minus_c * Axis.y * Axis.y + c,              one_minus_c * Axis.y * Axis.z - Axis.x * s,
                                                   one_minus_c * Axis.z * Axis.x - Axis.y * s,   one_minus_c * Axis.y * Axis.z + Axis.x * s,     one_minus_c * Axis.z * Axis.z + c
                                                 };
                
                        Out = mul(rot_mat,  In);
                    }
                
                    void Unity_Multiply_float (float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                
    float2 unity_gradientNoise_dir(float2 p)
    {
        // Permutation and hashing used in webgl-nosie goo.gl/pX7HtC
        p = p % 289;
        float x = (34 * p.x + 1) * p.x % 289 + p.y;
        x = (34 * x + 1) * x % 289;
        x = frac(x / 41) * 2 - 1;
        return normalize(float2(x - floor(x + 0.5), abs(x) - 0.5));
    }

                
    float unity_gradientNoise(float2 p)
    {
        float2 ip = floor(p);
        float2 fp = frac(p);
        float d00 = dot(unity_gradientNoise_dir(ip), fp);
        float d01 = dot(unity_gradientNoise_dir(ip + float2(0, 1)), fp - float2(0, 1));
        float d10 = dot(unity_gradientNoise_dir(ip + float2(1, 0)), fp - float2(1, 0));
        float d11 = dot(unity_gradientNoise_dir(ip + float2(1, 1)), fp - float2(1, 1));
        fp = fp * fp * fp * (fp * (fp * 6 - 15) + 10);
        return lerp(lerp(d00, d01, fp.y), lerp(d10, d11, fp.y), fp.x);
    }

                    void Unity_GradientNoise_float(float2 UV, float Scale, out float Out)
                    { Out = unity_gradientNoise(UV * Scale) + 0.5; }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Smoothstep_float(float Edge1, float Edge2, float In, out float Out)
                    {
                        Out = smoothstep(Edge1, Edge2, In);
                    }
                
                    void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A + B;
                    }
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float _Distance_DDD894F7_Out;
                        Unity_Distance_float3(SHADERGRAPH_OBJECT_POSITION, IN.WorldSpacePosition, _Distance_DDD894F7_Out);
                        float _Property_E6B08453_Out = Vector1_835232BE;
                        float _Divide_660CEBD_Out;
                        Unity_Divide_float(_Distance_DDD894F7_Out, _Property_E6B08453_Out, _Divide_660CEBD_Out);
                        float _Power_B0115474_Out;
                        Unity_Power_float(_Divide_660CEBD_Out, 3, _Power_B0115474_Out);
                        float3 _Multiply_EC2FDFD_Out;
                        Unity_Multiply_float(IN.WorldSpaceNormal, (_Power_B0115474_Out.xxx), _Multiply_EC2FDFD_Out);
                    
                        float _Property_721BEDFE_Out = Vector1_B73C588D;
                        float _Property_542926D1_Out = Vector1_157C4927;
                        float4 _Property_CB1E74E5_Out = Vector4_59D9B7DE;
                        float _Split_250219A7_R = _Property_CB1E74E5_Out[0];
                        float _Split_250219A7_G = _Property_CB1E74E5_Out[1];
                        float _Split_250219A7_B = _Property_CB1E74E5_Out[2];
                        float _Split_250219A7_A = _Property_CB1E74E5_Out[3];
                        float3 _RotateAboutAxis_B05F188_Out;
                        Unity_Rotate_About_Axis_Degrees_float(IN.WorldSpacePosition, (_Property_CB1E74E5_Out.xyz), _Split_250219A7_A, _RotateAboutAxis_B05F188_Out);
                        float _Property_7EB05FC3_Out = Vector1_3F53ED5D;
                        float _Multiply_C7BD5FE_Out;
                        Unity_Multiply_float(_Time.y, _Property_7EB05FC3_Out, _Multiply_C7BD5FE_Out);
                    
                        float2 _TilingAndOffset_4B04F07_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_C7BD5FE_Out.xx), _TilingAndOffset_4B04F07_Out);
                        float _Property_B8C30C6B_Out = Vector1_C24F477F;
                        float _GradientNoise_2D871EFC_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4B04F07_Out, _Property_B8C30C6B_Out, _GradientNoise_2D871EFC_Out);
                        float2 _TilingAndOffset_DC49C30D_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), float2 (0,0), _TilingAndOffset_DC49C30D_Out);
                        float _GradientNoise_E851A6F5_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_DC49C30D_Out, _Property_B8C30C6B_Out, _GradientNoise_E851A6F5_Out);
                        float _Add_FBEF6A05_Out;
                        Unity_Add_float(_GradientNoise_2D871EFC_Out, _GradientNoise_E851A6F5_Out, _Add_FBEF6A05_Out);
                        float _Divide_84323487_Out;
                        Unity_Divide_float(_Add_FBEF6A05_Out, 2, _Divide_84323487_Out);
                        float _Saturate_69AD2EA1_Out;
                        Unity_Saturate_float(_Divide_84323487_Out, _Saturate_69AD2EA1_Out);
                        float _Property_C51BB6F2_Out = Vector1_31818DD2;
                        float _Power_F9750E9_Out;
                        Unity_Power_float(_Saturate_69AD2EA1_Out, _Property_C51BB6F2_Out, _Power_F9750E9_Out);
                        float4 _Property_81C077A3_Out = Vector4_BD02EA1F;
                        float _Split_20EE5AF2_R = _Property_81C077A3_Out[0];
                        float _Split_20EE5AF2_G = _Property_81C077A3_Out[1];
                        float _Split_20EE5AF2_B = _Property_81C077A3_Out[2];
                        float _Split_20EE5AF2_A = _Property_81C077A3_Out[3];
                        float4 _Combine_4EFE1DF1_RGBA;
                        float3 _Combine_4EFE1DF1_RGB;
                        float2 _Combine_4EFE1DF1_RG;
                        Unity_Combine_float(_Split_20EE5AF2_R, _Split_20EE5AF2_G, 0, 0, _Combine_4EFE1DF1_RGBA, _Combine_4EFE1DF1_RGB, _Combine_4EFE1DF1_RG);
                        float4 _Combine_E24CA7A3_RGBA;
                        float3 _Combine_E24CA7A3_RGB;
                        float2 _Combine_E24CA7A3_RG;
                        Unity_Combine_float(_Split_20EE5AF2_B, _Split_20EE5AF2_A, 0, 0, _Combine_E24CA7A3_RGBA, _Combine_E24CA7A3_RGB, _Combine_E24CA7A3_RG);
                        float _Remap_72555603_Out;
                        Unity_Remap_float(_Power_F9750E9_Out, _Combine_4EFE1DF1_RG, _Combine_E24CA7A3_RG, _Remap_72555603_Out);
                        float _Absolute_5824C78A_Out;
                        Unity_Absolute_float(_Remap_72555603_Out, _Absolute_5824C78A_Out);
                        float _Smoothstep_A5008413_Out;
                        Unity_Smoothstep_float(_Property_721BEDFE_Out, _Property_542926D1_Out, _Absolute_5824C78A_Out, _Smoothstep_A5008413_Out);
                        float _Property_80BD6155_Out = Vector1_1100DBB4;
                        float _Multiply_14B0964F_Out;
                        Unity_Multiply_float(_Time.y, _Property_80BD6155_Out, _Multiply_14B0964F_Out);
                    
                        float2 _TilingAndOffset_4829AD5F_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_14B0964F_Out.xx), _TilingAndOffset_4829AD5F_Out);
                        float _Property_66A9A0A5_Out = Vector1_2E449449;
                        float _GradientNoise_93609DB7_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4829AD5F_Out, _Property_66A9A0A5_Out, _GradientNoise_93609DB7_Out);
                        float _Property_DBEBFF0A_Out = Vector1_745E6F83;
                        float _Multiply_5AF384A_Out;
                        Unity_Multiply_float(_GradientNoise_93609DB7_Out, _Property_DBEBFF0A_Out, _Multiply_5AF384A_Out);
                    
                        float _Add_CFD3849F_Out;
                        Unity_Add_float(_Smoothstep_A5008413_Out, _Multiply_5AF384A_Out, _Add_CFD3849F_Out);
                        float _Add_E47D30B3_Out;
                        Unity_Add_float(1, _Property_DBEBFF0A_Out, _Add_E47D30B3_Out);
                        float _Divide_8D5BD6F7_Out;
                        Unity_Divide_float(_Add_CFD3849F_Out, _Add_E47D30B3_Out, _Divide_8D5BD6F7_Out);
                        float3 _Multiply_E1FA8CEB_Out;
                        Unity_Multiply_float(IN.ObjectSpaceNormal, (_Divide_8D5BD6F7_Out.xxx), _Multiply_E1FA8CEB_Out);
                    
                        float _Property_1DD37380_Out = Vector1_34A2131D;
                        float3 _Multiply_4CA709E6_Out;
                        Unity_Multiply_float(_Multiply_E1FA8CEB_Out, (_Property_1DD37380_Out.xxx), _Multiply_4CA709E6_Out);
                    
                        float3 _Add_31FCBD62_Out;
                        Unity_Add_float3(IN.ObjectSpacePosition, _Multiply_4CA709E6_Out, _Add_31FCBD62_Out);
                        float3 _Add_E21A7CD8_Out;
                        Unity_Add_float3(_Multiply_EC2FDFD_Out, _Add_31FCBD62_Out, _Add_E21A7CD8_Out);
                        description.Position = _Add_E21A7CD8_Out;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float _SceneDepth_A2811005_Out;
                        Unity_SceneDepth_Eye_float(float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0), _SceneDepth_A2811005_Out);
                        float4 _ScreenPosition_D82CA084_Out = IN.ScreenPosition;
                        float _Split_12E9A2F2_R = _ScreenPosition_D82CA084_Out[0];
                        float _Split_12E9A2F2_G = _ScreenPosition_D82CA084_Out[1];
                        float _Split_12E9A2F2_B = _ScreenPosition_D82CA084_Out[2];
                        float _Split_12E9A2F2_A = _ScreenPosition_D82CA084_Out[3];
                        float _Subtract_89DE7918_Out;
                        Unity_Subtract_float(_Split_12E9A2F2_A, 1, _Subtract_89DE7918_Out);
                        float _Subtract_A3B7B8A_Out;
                        Unity_Subtract_float(_SceneDepth_A2811005_Out, _Subtract_89DE7918_Out, _Subtract_A3B7B8A_Out);
                        float _Property_E2299BE7_Out = Vector1_528AE1A1;
                        float _Divide_F5E23441_Out;
                        Unity_Divide_float(_Subtract_A3B7B8A_Out, _Property_E2299BE7_Out, _Divide_F5E23441_Out);
                        float _Saturate_5EBBB63B_Out;
                        Unity_Saturate_float(_Divide_F5E23441_Out, _Saturate_5EBBB63B_Out);
                        surface.Alpha = _Saturate_5EBBB63B_Out;
                        surface.AlphaClipThreshold = 0.5;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
        //-------------------------------------------------------------------------------------
        
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =           input.normalOS;
            output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
            output.ObjectSpacePosition =         input.positionOS;
            output.WorldSpacePosition =          GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
        
            return output;
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input)
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
        
            // evaluate vertex graph
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
        
            return input;
        }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.worldToTangent = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                output.positionRWS = input.positionRWS;
                #if SHADER_STAGE_FRAGMENT
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
        
        #if defined(DEBUG_DISPLAY)
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO
                }
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
        
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                // Builtin Data
                ZERO_INITIALIZE(BuiltinData, builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #endif
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDUnlitPass.template
            Name "ForwardOnly"
            Tags { "LightMode" = "ForwardOnly" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            Blend One OneMinusSrcAlpha
        
            Cull Off
        
            ZTest LEqual
        
            ZWrite On
        
            ZClip [_ZClip]
        
            // Stencil setup
        Stencil
        {
           WriteMask 3
           Ref  0
           Comp Always
           Pass Replace
        }
        
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            //enable GPU instancing support
            #pragma multi_compile_instancing
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define _BLENDMODE_ALPHA 1
            #define _ENABLE_FOG_ON_TRANSPARENT 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_FORWARD_UNLIT
                #pragma multi_compile _ DEBUG_DISPLAY
                #define REQUIRE_DEPTH_TEXTURE
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define HAVE_MESH_MODIFICATION
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            float3 normalOS : NORMAL; // optional
            float4 tangentOS : TANGENT; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            float3 positionRWS; // optional
            float3 normalWS; // optional
            float4 tangentWS; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToPS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            float4 interp02 : TEXCOORD2; // auto-packed
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            output.interp02.xyzw = input.tangentWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            output.tangentWS = input.interp02.xyzw;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 Vector4_59D9B7DE;
                    float Vector1_C24F477F;
                    float Vector1_3F53ED5D;
                    float Vector1_34A2131D;
                    float4 Vector4_BD02EA1F;
                    float4 Color_94B19C9E;
                    float4 Color_1325E6EB;
                    float Vector1_B73C588D;
                    float Vector1_157C4927;
                    float Vector1_31818DD2;
                    float Vector1_2E449449;
                    float Vector1_1100DBB4;
                    float Vector1_745E6F83;
                    float Vector1_8F0E7C7D;
                    float Vector1_835232BE;
                    float Vector1_EB822D68;
                    float Vector1_B624F6DD;
                    float Vector1_528AE1A1;
                    float4 _EmissionColor;
                    CBUFFER_END
                
                
                // Vertex Graph Inputs
                    struct VertexDescriptionInputs {
                        float3 ObjectSpaceNormal; // optional
                        float3 WorldSpaceNormal; // optional
                        float3 ObjectSpacePosition; // optional
                        float3 WorldSpacePosition; // optional
                    };
                // Vertex Graph Outputs
                    struct VertexDescription
                    {
                        float3 Position;
                    };
                    
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 WorldSpaceNormal; // optional
                        float3 WorldSpaceViewDirection; // optional
                        float3 WorldSpacePosition; // optional
                        float4 ScreenPosition; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Color;
                        float Alpha;
                        float AlphaClipThreshold;
                        float3 Emission;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Rotate_About_Axis_Degrees_float(float3 In, float3 Axis, float Rotation, out float3 Out)
                    {
                        Rotation = radians(Rotation);
                
                        float s = sin(Rotation);
                        float c = cos(Rotation);
                        float one_minus_c = 1.0 - c;
                        
                        Axis = normalize(Axis);
                
                        float3x3 rot_mat = { one_minus_c * Axis.x * Axis.x + c,            one_minus_c * Axis.x * Axis.y - Axis.z * s,     one_minus_c * Axis.z * Axis.x + Axis.y * s,
                                                   one_minus_c * Axis.x * Axis.y + Axis.z * s,   one_minus_c * Axis.y * Axis.y + c,              one_minus_c * Axis.y * Axis.z - Axis.x * s,
                                                   one_minus_c * Axis.z * Axis.x - Axis.y * s,   one_minus_c * Axis.y * Axis.z + Axis.x * s,     one_minus_c * Axis.z * Axis.z + c
                                                 };
                
                        Out = mul(rot_mat,  In);
                    }
                
                    void Unity_Multiply_float (float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                
    float2 unity_gradientNoise_dir(float2 p)
    {
        // Permutation and hashing used in webgl-nosie goo.gl/pX7HtC
        p = p % 289;
        float x = (34 * p.x + 1) * p.x % 289 + p.y;
        x = (34 * x + 1) * x % 289;
        x = frac(x / 41) * 2 - 1;
        return normalize(float2(x - floor(x + 0.5), abs(x) - 0.5));
    }

                
    float unity_gradientNoise(float2 p)
    {
        float2 ip = floor(p);
        float2 fp = frac(p);
        float d00 = dot(unity_gradientNoise_dir(ip), fp);
        float d01 = dot(unity_gradientNoise_dir(ip + float2(0, 1)), fp - float2(0, 1));
        float d10 = dot(unity_gradientNoise_dir(ip + float2(1, 0)), fp - float2(1, 0));
        float d11 = dot(unity_gradientNoise_dir(ip + float2(1, 1)), fp - float2(1, 1));
        fp = fp * fp * fp * (fp * (fp * 6 - 15) + 10);
        return lerp(lerp(d00, d01, fp.y), lerp(d10, d11, fp.y), fp.x);
    }

                    void Unity_GradientNoise_float(float2 UV, float Scale, out float Out)
                    { Out = unity_gradientNoise(UV * Scale) + 0.5; }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Smoothstep_float(float Edge1, float Edge2, float In, out float Out)
                    {
                        Out = smoothstep(Edge1, Edge2, In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_FresnelEffect_float(float3 Normal, float3 ViewDir, float Power, out float Out)
                    {
                        Out = pow((1.0 - saturate(dot(normalize(Normal), normalize(ViewDir)))), Power);
                    }
                
                    void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_SceneDepth_Eye_float(float4 UV, out float Out)
                    {
                        Out = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH(UV.xy), _ZBufferParams);
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Multiply_float (float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Distance_float3(float3 A, float3 B, out float Out)
                    {
                        Out = distance(A, B);
                    }
                
                    void Unity_Multiply_float (float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A + B;
                    }
                
                // Vertex Graph Evaluation
                    VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                    {
                        VertexDescription description = (VertexDescription)0;
                        float _Distance_DDD894F7_Out;
                        Unity_Distance_float3(SHADERGRAPH_OBJECT_POSITION, IN.WorldSpacePosition, _Distance_DDD894F7_Out);
                        float _Property_E6B08453_Out = Vector1_835232BE;
                        float _Divide_660CEBD_Out;
                        Unity_Divide_float(_Distance_DDD894F7_Out, _Property_E6B08453_Out, _Divide_660CEBD_Out);
                        float _Power_B0115474_Out;
                        Unity_Power_float(_Divide_660CEBD_Out, 3, _Power_B0115474_Out);
                        float3 _Multiply_EC2FDFD_Out;
                        Unity_Multiply_float(IN.WorldSpaceNormal, (_Power_B0115474_Out.xxx), _Multiply_EC2FDFD_Out);
                    
                        float _Property_721BEDFE_Out = Vector1_B73C588D;
                        float _Property_542926D1_Out = Vector1_157C4927;
                        float4 _Property_CB1E74E5_Out = Vector4_59D9B7DE;
                        float _Split_250219A7_R = _Property_CB1E74E5_Out[0];
                        float _Split_250219A7_G = _Property_CB1E74E5_Out[1];
                        float _Split_250219A7_B = _Property_CB1E74E5_Out[2];
                        float _Split_250219A7_A = _Property_CB1E74E5_Out[3];
                        float3 _RotateAboutAxis_B05F188_Out;
                        Unity_Rotate_About_Axis_Degrees_float(IN.WorldSpacePosition, (_Property_CB1E74E5_Out.xyz), _Split_250219A7_A, _RotateAboutAxis_B05F188_Out);
                        float _Property_7EB05FC3_Out = Vector1_3F53ED5D;
                        float _Multiply_C7BD5FE_Out;
                        Unity_Multiply_float(_Time.y, _Property_7EB05FC3_Out, _Multiply_C7BD5FE_Out);
                    
                        float2 _TilingAndOffset_4B04F07_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_C7BD5FE_Out.xx), _TilingAndOffset_4B04F07_Out);
                        float _Property_B8C30C6B_Out = Vector1_C24F477F;
                        float _GradientNoise_2D871EFC_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4B04F07_Out, _Property_B8C30C6B_Out, _GradientNoise_2D871EFC_Out);
                        float2 _TilingAndOffset_DC49C30D_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), float2 (0,0), _TilingAndOffset_DC49C30D_Out);
                        float _GradientNoise_E851A6F5_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_DC49C30D_Out, _Property_B8C30C6B_Out, _GradientNoise_E851A6F5_Out);
                        float _Add_FBEF6A05_Out;
                        Unity_Add_float(_GradientNoise_2D871EFC_Out, _GradientNoise_E851A6F5_Out, _Add_FBEF6A05_Out);
                        float _Divide_84323487_Out;
                        Unity_Divide_float(_Add_FBEF6A05_Out, 2, _Divide_84323487_Out);
                        float _Saturate_69AD2EA1_Out;
                        Unity_Saturate_float(_Divide_84323487_Out, _Saturate_69AD2EA1_Out);
                        float _Property_C51BB6F2_Out = Vector1_31818DD2;
                        float _Power_F9750E9_Out;
                        Unity_Power_float(_Saturate_69AD2EA1_Out, _Property_C51BB6F2_Out, _Power_F9750E9_Out);
                        float4 _Property_81C077A3_Out = Vector4_BD02EA1F;
                        float _Split_20EE5AF2_R = _Property_81C077A3_Out[0];
                        float _Split_20EE5AF2_G = _Property_81C077A3_Out[1];
                        float _Split_20EE5AF2_B = _Property_81C077A3_Out[2];
                        float _Split_20EE5AF2_A = _Property_81C077A3_Out[3];
                        float4 _Combine_4EFE1DF1_RGBA;
                        float3 _Combine_4EFE1DF1_RGB;
                        float2 _Combine_4EFE1DF1_RG;
                        Unity_Combine_float(_Split_20EE5AF2_R, _Split_20EE5AF2_G, 0, 0, _Combine_4EFE1DF1_RGBA, _Combine_4EFE1DF1_RGB, _Combine_4EFE1DF1_RG);
                        float4 _Combine_E24CA7A3_RGBA;
                        float3 _Combine_E24CA7A3_RGB;
                        float2 _Combine_E24CA7A3_RG;
                        Unity_Combine_float(_Split_20EE5AF2_B, _Split_20EE5AF2_A, 0, 0, _Combine_E24CA7A3_RGBA, _Combine_E24CA7A3_RGB, _Combine_E24CA7A3_RG);
                        float _Remap_72555603_Out;
                        Unity_Remap_float(_Power_F9750E9_Out, _Combine_4EFE1DF1_RG, _Combine_E24CA7A3_RG, _Remap_72555603_Out);
                        float _Absolute_5824C78A_Out;
                        Unity_Absolute_float(_Remap_72555603_Out, _Absolute_5824C78A_Out);
                        float _Smoothstep_A5008413_Out;
                        Unity_Smoothstep_float(_Property_721BEDFE_Out, _Property_542926D1_Out, _Absolute_5824C78A_Out, _Smoothstep_A5008413_Out);
                        float _Property_80BD6155_Out = Vector1_1100DBB4;
                        float _Multiply_14B0964F_Out;
                        Unity_Multiply_float(_Time.y, _Property_80BD6155_Out, _Multiply_14B0964F_Out);
                    
                        float2 _TilingAndOffset_4829AD5F_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_14B0964F_Out.xx), _TilingAndOffset_4829AD5F_Out);
                        float _Property_66A9A0A5_Out = Vector1_2E449449;
                        float _GradientNoise_93609DB7_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4829AD5F_Out, _Property_66A9A0A5_Out, _GradientNoise_93609DB7_Out);
                        float _Property_DBEBFF0A_Out = Vector1_745E6F83;
                        float _Multiply_5AF384A_Out;
                        Unity_Multiply_float(_GradientNoise_93609DB7_Out, _Property_DBEBFF0A_Out, _Multiply_5AF384A_Out);
                    
                        float _Add_CFD3849F_Out;
                        Unity_Add_float(_Smoothstep_A5008413_Out, _Multiply_5AF384A_Out, _Add_CFD3849F_Out);
                        float _Add_E47D30B3_Out;
                        Unity_Add_float(1, _Property_DBEBFF0A_Out, _Add_E47D30B3_Out);
                        float _Divide_8D5BD6F7_Out;
                        Unity_Divide_float(_Add_CFD3849F_Out, _Add_E47D30B3_Out, _Divide_8D5BD6F7_Out);
                        float3 _Multiply_E1FA8CEB_Out;
                        Unity_Multiply_float(IN.ObjectSpaceNormal, (_Divide_8D5BD6F7_Out.xxx), _Multiply_E1FA8CEB_Out);
                    
                        float _Property_1DD37380_Out = Vector1_34A2131D;
                        float3 _Multiply_4CA709E6_Out;
                        Unity_Multiply_float(_Multiply_E1FA8CEB_Out, (_Property_1DD37380_Out.xxx), _Multiply_4CA709E6_Out);
                    
                        float3 _Add_31FCBD62_Out;
                        Unity_Add_float3(IN.ObjectSpacePosition, _Multiply_4CA709E6_Out, _Add_31FCBD62_Out);
                        float3 _Add_E21A7CD8_Out;
                        Unity_Add_float3(_Multiply_EC2FDFD_Out, _Add_31FCBD62_Out, _Add_E21A7CD8_Out);
                        description.Position = _Add_E21A7CD8_Out;
                        return description;
                    }
                    
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_213666C1_Out = Color_1325E6EB;
                        float4 _Property_8104B95A_Out = Color_94B19C9E;
                        float _Property_721BEDFE_Out = Vector1_B73C588D;
                        float _Property_542926D1_Out = Vector1_157C4927;
                        float4 _Property_CB1E74E5_Out = Vector4_59D9B7DE;
                        float _Split_250219A7_R = _Property_CB1E74E5_Out[0];
                        float _Split_250219A7_G = _Property_CB1E74E5_Out[1];
                        float _Split_250219A7_B = _Property_CB1E74E5_Out[2];
                        float _Split_250219A7_A = _Property_CB1E74E5_Out[3];
                        float3 _RotateAboutAxis_B05F188_Out;
                        Unity_Rotate_About_Axis_Degrees_float(IN.WorldSpacePosition, (_Property_CB1E74E5_Out.xyz), _Split_250219A7_A, _RotateAboutAxis_B05F188_Out);
                        float _Property_7EB05FC3_Out = Vector1_3F53ED5D;
                        float _Multiply_C7BD5FE_Out;
                        Unity_Multiply_float(_Time.y, _Property_7EB05FC3_Out, _Multiply_C7BD5FE_Out);
                    
                        float2 _TilingAndOffset_4B04F07_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_C7BD5FE_Out.xx), _TilingAndOffset_4B04F07_Out);
                        float _Property_B8C30C6B_Out = Vector1_C24F477F;
                        float _GradientNoise_2D871EFC_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4B04F07_Out, _Property_B8C30C6B_Out, _GradientNoise_2D871EFC_Out);
                        float2 _TilingAndOffset_DC49C30D_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), float2 (0,0), _TilingAndOffset_DC49C30D_Out);
                        float _GradientNoise_E851A6F5_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_DC49C30D_Out, _Property_B8C30C6B_Out, _GradientNoise_E851A6F5_Out);
                        float _Add_FBEF6A05_Out;
                        Unity_Add_float(_GradientNoise_2D871EFC_Out, _GradientNoise_E851A6F5_Out, _Add_FBEF6A05_Out);
                        float _Divide_84323487_Out;
                        Unity_Divide_float(_Add_FBEF6A05_Out, 2, _Divide_84323487_Out);
                        float _Saturate_69AD2EA1_Out;
                        Unity_Saturate_float(_Divide_84323487_Out, _Saturate_69AD2EA1_Out);
                        float _Property_C51BB6F2_Out = Vector1_31818DD2;
                        float _Power_F9750E9_Out;
                        Unity_Power_float(_Saturate_69AD2EA1_Out, _Property_C51BB6F2_Out, _Power_F9750E9_Out);
                        float4 _Property_81C077A3_Out = Vector4_BD02EA1F;
                        float _Split_20EE5AF2_R = _Property_81C077A3_Out[0];
                        float _Split_20EE5AF2_G = _Property_81C077A3_Out[1];
                        float _Split_20EE5AF2_B = _Property_81C077A3_Out[2];
                        float _Split_20EE5AF2_A = _Property_81C077A3_Out[3];
                        float4 _Combine_4EFE1DF1_RGBA;
                        float3 _Combine_4EFE1DF1_RGB;
                        float2 _Combine_4EFE1DF1_RG;
                        Unity_Combine_float(_Split_20EE5AF2_R, _Split_20EE5AF2_G, 0, 0, _Combine_4EFE1DF1_RGBA, _Combine_4EFE1DF1_RGB, _Combine_4EFE1DF1_RG);
                        float4 _Combine_E24CA7A3_RGBA;
                        float3 _Combine_E24CA7A3_RGB;
                        float2 _Combine_E24CA7A3_RG;
                        Unity_Combine_float(_Split_20EE5AF2_B, _Split_20EE5AF2_A, 0, 0, _Combine_E24CA7A3_RGBA, _Combine_E24CA7A3_RGB, _Combine_E24CA7A3_RG);
                        float _Remap_72555603_Out;
                        Unity_Remap_float(_Power_F9750E9_Out, _Combine_4EFE1DF1_RG, _Combine_E24CA7A3_RG, _Remap_72555603_Out);
                        float _Absolute_5824C78A_Out;
                        Unity_Absolute_float(_Remap_72555603_Out, _Absolute_5824C78A_Out);
                        float _Smoothstep_A5008413_Out;
                        Unity_Smoothstep_float(_Property_721BEDFE_Out, _Property_542926D1_Out, _Absolute_5824C78A_Out, _Smoothstep_A5008413_Out);
                        float _Property_80BD6155_Out = Vector1_1100DBB4;
                        float _Multiply_14B0964F_Out;
                        Unity_Multiply_float(_Time.y, _Property_80BD6155_Out, _Multiply_14B0964F_Out);
                    
                        float2 _TilingAndOffset_4829AD5F_Out;
                        Unity_TilingAndOffset_float((_RotateAboutAxis_B05F188_Out.xy), float2 (1,1), (_Multiply_14B0964F_Out.xx), _TilingAndOffset_4829AD5F_Out);
                        float _Property_66A9A0A5_Out = Vector1_2E449449;
                        float _GradientNoise_93609DB7_Out;
                        Unity_GradientNoise_float(_TilingAndOffset_4829AD5F_Out, _Property_66A9A0A5_Out, _GradientNoise_93609DB7_Out);
                        float _Property_DBEBFF0A_Out = Vector1_745E6F83;
                        float _Multiply_5AF384A_Out;
                        Unity_Multiply_float(_GradientNoise_93609DB7_Out, _Property_DBEBFF0A_Out, _Multiply_5AF384A_Out);
                    
                        float _Add_CFD3849F_Out;
                        Unity_Add_float(_Smoothstep_A5008413_Out, _Multiply_5AF384A_Out, _Add_CFD3849F_Out);
                        float _Add_E47D30B3_Out;
                        Unity_Add_float(1, _Property_DBEBFF0A_Out, _Add_E47D30B3_Out);
                        float _Divide_8D5BD6F7_Out;
                        Unity_Divide_float(_Add_CFD3849F_Out, _Add_E47D30B3_Out, _Divide_8D5BD6F7_Out);
                        float4 _Lerp_7F29C29D_Out;
                        Unity_Lerp_float4(_Property_213666C1_Out, _Property_8104B95A_Out, (_Divide_8D5BD6F7_Out.xxxx), _Lerp_7F29C29D_Out);
                        float _Property_A2D9BF0E_Out = Vector1_EB822D68;
                        float _FresnelEffect_94E4DF51_Out;
                        Unity_FresnelEffect_float(IN.WorldSpaceNormal, IN.WorldSpaceViewDirection, _Property_A2D9BF0E_Out, _FresnelEffect_94E4DF51_Out);
                        float _Multiply_8B357C9C_Out;
                        Unity_Multiply_float(_Divide_8D5BD6F7_Out, _FresnelEffect_94E4DF51_Out, _Multiply_8B357C9C_Out);
                    
                        float _Property_598EB6C9_Out = Vector1_B624F6DD;
                        float _Multiply_5F15B114_Out;
                        Unity_Multiply_float(_Multiply_8B357C9C_Out, _Property_598EB6C9_Out, _Multiply_5F15B114_Out);
                    
                        float4 _Add_F9D58D82_Out;
                        Unity_Add_float4(_Lerp_7F29C29D_Out, (_Multiply_5F15B114_Out.xxxx), _Add_F9D58D82_Out);
                        float _SceneDepth_A2811005_Out;
                        Unity_SceneDepth_Eye_float(float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0), _SceneDepth_A2811005_Out);
                        float4 _ScreenPosition_D82CA084_Out = IN.ScreenPosition;
                        float _Split_12E9A2F2_R = _ScreenPosition_D82CA084_Out[0];
                        float _Split_12E9A2F2_G = _ScreenPosition_D82CA084_Out[1];
                        float _Split_12E9A2F2_B = _ScreenPosition_D82CA084_Out[2];
                        float _Split_12E9A2F2_A = _ScreenPosition_D82CA084_Out[3];
                        float _Subtract_89DE7918_Out;
                        Unity_Subtract_float(_Split_12E9A2F2_A, 1, _Subtract_89DE7918_Out);
                        float _Subtract_A3B7B8A_Out;
                        Unity_Subtract_float(_SceneDepth_A2811005_Out, _Subtract_89DE7918_Out, _Subtract_A3B7B8A_Out);
                        float _Property_E2299BE7_Out = Vector1_528AE1A1;
                        float _Divide_F5E23441_Out;
                        Unity_Divide_float(_Subtract_A3B7B8A_Out, _Property_E2299BE7_Out, _Divide_F5E23441_Out);
                        float _Saturate_5EBBB63B_Out;
                        Unity_Saturate_float(_Divide_F5E23441_Out, _Saturate_5EBBB63B_Out);
                        float _Property_B8F9BE5A_Out = Vector1_8F0E7C7D;
                        float4 _Multiply_B33B0E9_Out;
                        Unity_Multiply_float(_Add_F9D58D82_Out, (_Property_B8F9BE5A_Out.xxxx), _Multiply_B33B0E9_Out);
                    
                        surface.Color = (_Add_F9D58D82_Out.xyz);
                        surface.Alpha = _Saturate_5EBBB63B_Out;
                        surface.AlphaClipThreshold = 0.5;
                        surface.Emission = (_Multiply_B33B0E9_Out.xyz);
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : VertexAnimation.template.hlsl
        //-------------------------------------------------------------------------------------
        
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =           input.normalOS;
            output.WorldSpaceNormal =            TransformObjectToWorldNormal(input.normalOS);
            output.ObjectSpacePosition =         input.positionOS;
            output.WorldSpacePosition =          GetAbsolutePositionWS(TransformObjectToWorld(input.positionOS));
        
            return output;
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input)
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
        
            // evaluate vertex graph
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
        
            return input;
        }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : VertexAnimation.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.worldToTangent = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                output.positionRWS = input.positionRWS;
                output.worldToTangent = BuildWorldToTangent(input.tangentWS, input.normalWS);
                #if SHADER_STAGE_FRAGMENT
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.worldToTangent[2].xyz);
                output.WorldSpaceViewDirection =     normalize(viewWS);
                output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
                surfaceData.color = surfaceDescription.Color;
        
        #if defined(DEBUG_DISPLAY)
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO
                }
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
        
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                // Builtin Data
                ZERO_INITIALIZE(BuiltinData, builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #endif
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassForwardUnlit.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
    }
    CustomEditor "UnityEditor.Experimental.Rendering.HDPipeline.HDUnlitGUI"
    FallBack "Hidden/InternalErrorShader"
}
