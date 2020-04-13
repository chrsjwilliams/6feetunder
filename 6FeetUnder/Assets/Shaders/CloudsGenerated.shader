// Compiled shader for PC, Mac & Linux Standalone

//////////////////////////////////////////////////////////////////////////
// 
// NOTE: This is *not* a valid shader file, the contents are provided just
// for information and for debugging purposes only.
// 
//////////////////////////////////////////////////////////////////////////
// Skipping shader variants that would not be included into build of current scene.

Shader "Shader Graphs/SkyDiskShader" {
	Properties{
	 Vector4_59D9B7DE ("RotateProjection", Vector) = (1.000000,0.000000,0.000000,0.000000)
	 Vector1_C24F477F ("NoiseScale", Float) = 10.000000
	 Vector1_3F53ED5D ("NoiseSpeed", Float) = 0.100000
	 Vector1_34A2131D ("NoiseHeight", Float) = 100.000000
	 Vector4_BD02EA1F ("NoiseRemap", Vector) = (0.000000,1.000000,-1.000000,1.000000)
	 Color_94B19C9E ("ColorValley", Color) = (0.000000,0.000000,0.000000,0.000000)
	 Color_1325E6EB ("ColorPeak", Color) = (1.000000,1.000000,1.000000,0.000000)
	 Vector1_B73C588D ("NoiseEdge1", Float) = 0.000000
	 Vector1_157C4927 ("NoiseEdge2", Float) = 1.000000
	 Vector1_31818DD2 ("NoisePowerStrength", Float) = 2.000000
	 Vector1_2E449449 ("BaseScale", Float) = 5.000000
	 Vector1_1100DBB4 ("BaseSpeed", Float) = 0.200000
	 Vector1_745E6F83 ("BaseStrength", Float) = 2.000000
	 Vector1_8F0E7C7D ("EmissionStrength", Float) = 2.000000
	 Vector1_835232BE ("Curvature", Float) = 1.000000
	 Vector1_EB822D68 ("FresnelPower", Float) = 1.000000
	 Vector1_B624F6DD ("FresnelOpacity", Float) = 1.000000
	 Vector1_528AE1A1 ("FadeDepth", Float) = 100.000000
	[HideInInspector]  _EmissionColor ("Color", Color) = (1.000000,1.000000,1.000000,1.000000)
	[HideInInspector]  _RenderQueueType ("Vector1", Float) = 5.000000
	[HideInInspector]  _StencilRef ("Vector1", Float) = 0.000000
	[HideInInspector]  _StencilWriteMask ("Vector1", Float) = 6.000000
	[HideInInspector]  _StencilRefDepth ("Vector1", Float) = 0.000000
	[HideInInspector]  _StencilWriteMaskDepth ("Vector1", Float) = 8.000000
	[HideInInspector]  _StencilRefMV ("Vector1", Float) = 32.000000
	[HideInInspector]  _StencilWriteMaskMV ("Vector1", Float) = 40.000000
	[HideInInspector]  _StencilRefDistortionVec ("Vector1", Float) = 4.000000
	[HideInInspector]  _StencilWriteMaskDistortionVec ("Vector1", Float) = 4.000000
	[HideInInspector]  _StencilWriteMaskGBuffer ("Vector1", Float) = 14.000000
	[HideInInspector]  _StencilRefGBuffer ("Vector1", Float) = 2.000000
	[HideInInspector]  _ZTestGBuffer ("Vector1", Float) = 4.000000
	[HideInInspector][ToggleUI]  _RequireSplitLighting ("Boolean", Float) = 0.000000
	[HideInInspector][ToggleUI]  _ReceivesSSR ("Boolean", Float) = 0.000000
	[HideInInspector]  _SurfaceType ("Vector1", Float) = 1.000000
	[HideInInspector]  _BlendMode ("Vector1", Float) = 0.000000
	[HideInInspector]  _SrcBlend ("Vector1", Float) = 1.000000
	[HideInInspector]  _DstBlend ("Vector1", Float) = 0.000000
	[HideInInspector]  _AlphaSrcBlend ("Vector1", Float) = 1.000000
	[HideInInspector]  _AlphaDstBlend ("Vector1", Float) = 0.000000
	[HideInInspector][ToggleUI]  _ZWrite ("Boolean", Float) = 1.000000
	[HideInInspector][ToggleUI]  _TransparentZWrite ("Boolean", Float) = 1.000000
	[HideInInspector]  _CullMode ("Vector1", Float) = 2.000000
	[HideInInspector]  _TransparentSortPriority ("Vector1", Float) = 0.000000
	[HideInInspector][ToggleUI]  _EnableFogOnTransparent ("Boolean", Float) = 1.000000
	[HideInInspector]  _CullModeForward ("Vector1", Float) = 2.000000
	[HideInInspector][Enum (Front, 1, Back, 2)]  _TransparentCullMode ("Vector1", Float) = 2.000000
	[HideInInspector]  _ZTestDepthEqualForOpaque ("Vector1", Float) = 4.000000
	[HideInInspector][Enum (UnityEngine.Rendering.CompareFunction)]  _ZTestTransparent ("Vector1", Float) = 4.000000
	[HideInInspector][ToggleUI]  _TransparentBackfaceEnable ("Boolean", Float) = 0.000000
	[HideInInspector][ToggleUI]  _AlphaCutoffEnable ("Boolean", Float) = 0.000000
	[HideInInspector][ToggleUI]  _UseShadowThreshold ("Boolean", Float) = 0.000000
	[HideInInspector][ToggleUI]  _DoubleSidedEnable ("Boolean", Float) = 1.000000
	[HideInInspector][Enum (Flip, 0, Mirror, 1, None, 2)]  _DoubleSidedNormalMode ("Vector1", Float) = 2.000000
	[HideInInspector]  _DoubleSidedConstants ("Vector4", Vector) = (1.000000,1.000000,-1.000000,0.000000)
	}
		SubShader{
		 Tags { "QUEUE" = "Transparent+0" "RenderType" = "HDUnlitShader" "RenderPipeline" = "HDRenderPipeline" }


		 // Stats for Vertex shader:
		 //        d3d11: 459 math
		 Pass {
		  Name "ShadowCaster"
		  Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent+0" "RenderType" = "HDUnlitShader" "RenderPipeline" = "HDRenderPipeline" }
		  Cull[_CullMode]
		  ColorMask 0
		//////////////////////////////////
		//                              //
		//      Compiled programs       //
		//                              //
		//////////////////////////////////
	  //////////////////////////////////////////////////////
	  Global Keywords : <none>
	  Local Keywords : <none>
	  --Hardware tier variant : Tier 1
	  --Vertex shader for "d3d11" :
		// Stats: 459 math, 9 temp registers
		Uses vertex data channel "Vertex"
		Uses vertex data channel "Normal"

		Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
		  Matrix4x4 unity_ObjectToWorld at 0
		  Matrix4x4 unity_WorldToObject at 64
		}
		Constant Buffer "UnityGlobal" (7216 bytes) on slot 1 {
		  Matrix4x4 _ViewProjMatrix at 256
		  Vector3 _WorldSpaceCameraPos at 640
		  Vector4 _TimeParameters at 1072
		}
		Constant Buffer "UnityPerMaterial" (304 bytes) on slot 2 {
		  Vector4 Vector4_59D9B7DE at 0
		  Float Vector1_C24F477F at 16
		  Float Vector1_3F53ED5D at 20
		  Float Vector1_34A2131D at 24
		  Vector4 Vector4_BD02EA1F at 32
		  Float Vector1_B73C588D at 80
		  Float Vector1_157C4927 at 84
		  Float Vector1_31818DD2 at 88
		  Float Vector1_2E449449 at 92
		  Float Vector1_1100DBB4 at 96
		  Float Vector1_745E6F83 at 100
		  Float Vector1_835232BE at 108
		}

		Shader Disassembly :
		//
		// Generated by Microsoft (R) D3D Shader Disassembler
		//
		//
		// Input signature:
		//
		// Name                 Index   Mask Register SysValue  Format   Used
		// -------------------- ----- ------ -------- -------- ------- ------
		// POSITION                 0   xyz         0     NONE   float   xyz 
		// NORMAL                   0   xyz         1     NONE   float   xyz 
		// TANGENT                  0   xyzw        2     NONE   float       
		//
		//
		// Output signature:
		//
		// Name                 Index   Mask Register SysValue  Format   Used
		// -------------------- ----- ------ -------- -------- ------- ------
		// SV_POSITION              0   xyzw        0      POS   float   xyzw
		// TEXCOORD                 0   xyz         1     NONE   float   xyz 
		//
			  vs_5_0
			  dcl_globalFlags refactoringAllowed
			  dcl_constantbuffer CB0[7], immediateIndexed
			  dcl_constantbuffer CB1[68], immediateIndexed
			  dcl_constantbuffer CB2[7], immediateIndexed
			  dcl_input v0.xyz
			  dcl_input v1.xyz
			  dcl_output_siv o0.xyzw, position
			  dcl_output o1.xyz
			  dcl_temps 9
		   0: mov r0.x, cb0[0].x
		   1 : mov r0.y, cb0[1].x
		   2 : mov r0.z, cb0[2].x
		   3 : add r1.xyw, cb0[3].xyxz, -cb1[40].xyxz
		   4 : mov r0.w, r1.x
		   5 : mov r2.xyz, v0.xyzx
		   6 : mov r2.w, l (1.000000)
		   7 : dp4 r3.x, r0.xyzw, r2.xyzw
		   8 : mov r4.w, r1.y
		   9 : mov r4.x, cb0[0].y
		  10 : mov r4.y, cb0[1].y
		  11 : mov r4.z, cb0[2].y
		  12 : dp4 r3.y, r4.xyzw, r2.xyzw
		  13 : mov r1.x, cb0[0].z
		  14 : mov r1.y, cb0[1].z
		  15 : mov r1.z, cb0[2].z
		  16 : dp4 r3.z, r1.xyzw, r2.xyzw
		  17 : add r2.xyz, r3.xyzx, cb1[40].xyzx
		  18 : mul r2.w, cb2[0].w, l (0.017453)
		  19 : sincos r3.x, r5.x, r2.w
		  20 : add r2.w, -r5.x, l (1.000000)
		  21 : dp3 r3.y, cb2[0].xyzx, cb2[0].xyzx
		  22 : rsq r3.y, r3.y
		  23 : mul r3.yzw, r3.yyyy, cb2[0].zzyx
		  24 : mul r6.xyzw, r2.wwww, r3.wwyz
		  25 : mul r5.yzw, r3.xxxx, r3.yyzw
		  26 : mad r7.xy, r6.xwxx, r3.wzww, r5.xxxx
		  27 : mad r7.z, r6.y, r3.z, -r5.y
		  28 : mad r8.xy, r6.zyzz, r3.wzww, r5.zyzz
		  29 : mad r8.z, r6.w, r3.y, -r5.w
		  30 : mov r7.w, r8.x
		  31 : dp3 r3.x, r7.xzwx, r2.xyzx
		  32 : mov r8.w, r7.y
		  33 : dp3 r3.y, r8.ywzy, r2.xyzx
		  34 : add r2.xyz, -r2.xyzx, cb0[3].xyzx
		  35 : dp3 r2.x, r2.xyzx, r2.xyzx
		  36 : sqrt r2.x, r2.x
		  37 : div r2.x, r2.x, cb2[6].w
		  38 : mad r2.yz, cb1[67].xxxx, cb2[1].yyyy, r3.xxyx
		  39 : mul r2.yz, r2.yyzy, cb2[1].xxxx
		  40 : round_ni r3.zw, r2.yyyz
		  41 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
		  42 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
		  43 : ge r6.xyzw, r6.xyzw, -r6.zwzw
		  44 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		  45 : mul r5.xy, r5.xyxx, r6.zwzz
		  46 : frc r5.xy, r5.xyxx
		  47 : mul r5.xy, r5.xyxx, r6.xyxx
		  48 : mad r2.w, r5.x, l (34.000000), l (1.000000)
		  49 : mul r2.w, r5.x, r2.w
		  50 : mul r5.x, r2.w, l (289.000000)
		  51 : ge r5.x, r5.x, -r5.x
		  52 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
		  53 : mul r2.w, r2.w, r5.z
		  54 : frc r2.yzw, r2.yyzw
		  55 : mad r2.w, r5.x, r2.w, r5.y
		  56 : mad r5.x, r2.w, l (34.000000), l (1.000000)
		  57 : mul r2.w, r2.w, r5.x
		  58 : mul r5.x, r2.w, l (289.000000)
		  59 : ge r5.x, r5.x, -r5.x
		  60 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
		  61 : mul r2.w, r2.w, r5.y
		  62 : frc r2.w, r2.w
		  63 : mul r2.w, r2.w, r5.x
		  64 : mul r2.w, r2.w, l (0.024390)
		  65 : frc r2.w, r2.w
		  66 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
		  67 : round_ni r2.w, r5.y
		  68 : add r6.x, -r2.w, r5.x
		  69 : add r6.y, | r5.x | , l (-0.500000)
		  70 : dp2 r2.w, r6.xyxx, r6.xyxx
		  71 : rsq r2.w, r2.w
		  72 : mul r5.xy, r2.wwww, r6.xyxx
		  73 : add r5.zw, r2.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
		  74 : dp2 r2.w, r5.xyxx, r5.zwzz
		  75 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
		  76 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
		  77 : ge r6.xyzw, r6.xyzw, -r6.xyzw
		  78 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		  79 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		  80 : mul r5.zw, r5.zzzw, r7.zzzw
		  81 : mul r5.xy, r5.xyxx, r6.zwzz
		  82 : frc r5.xyzw, r5.xyzw
		  83 : mul r5.xy, r5.xyxx, r6.xyxx
		  84 : mul r5.zw, r5.zzzw, r7.xxxy
		  85 : mad r6.x, r5.z, l (34.000000), l (1.000000)
		  86 : mul r5.z, r5.z, r6.x
		  87 : mul r6.x, r5.z, l (289.000000)
		  88 : ge r6.x, r6.x, -r6.x
		  89 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
		  90 : mul r5.z, r5.z, r6.y
		  91 : frc r5.z, r5.z
		  92 : mad r5.z, r6.x, r5.z, r5.w
		  93 : mad r5.w, r5.z, l (34.000000), l (1.000000)
		  94 : mul r5.z, r5.z, r5.w
		  95 : mul r5.w, r5.z, l (289.000000)
		  96 : ge r5.w, r5.w, -r5.w
		  97 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
		  98 : mul r5.z, r5.z, r6.y
		  99 : frc r5.z, r5.z
		 100 : mul r5.z, r5.z, r6.x
		 101 : mul r5.z, r5.z, l (0.024390)
		 102 : frc r5.z, r5.z
		 103 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
		 104 : round_ni r5.w, r5.w
		 105 : add r6.x, -r5.w, r5.z
		 106 : add r6.y, | r5.z | , l (-0.500000)
		 107 : dp2 r5.z, r6.xyxx, r6.xyxx
		 108 : rsq r5.z, r5.z
		 109 : mul r5.zw, r5.zzzz, r6.xxxy
		 110 : add r6.xyzw, r2.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
		 111 : dp2 r5.z, r5.zwzz, r6.zwzz
		 112 : add r2.w, r2.w, -r5.z
		 113 : mul r6.zw, r2.yyyz, r2.yyyz
		 114 : mul r6.zw, r2.yyyz, r6.zzzw
		 115 : mad r7.xy, r2.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
		 116 : mad r7.xy, r2.yzyy, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
		 117 : mul r6.zw, r6.zzzw, r7.xxxy
		 118 : mad r2.w, r6.w, r2.w, r5.z
		 119 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
		 120 : ge r7.xyzw, r7.xyzw, -r7.zwzw
		 121 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		 122 : mul r3.zw, r3.zzzw, r7.zzzw
		 123 : frc r3.zw, r3.zzzw
		 124 : mul r3.zw, r3.zzzw, r7.xxxy
		 125 : mad r5.z, r3.z, l (34.000000), l (1.000000)
		 126 : mul r3.z, r3.z, r5.z
		 127 : mul r5.z, r3.z, l (289.000000)
		 128 : ge r5.z, r5.z, -r5.z
		 129 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 130 : mul r3.z, r3.z, r5.w
		 131 : frc r3.z, r3.z
		 132 : mad r3.z, r5.z, r3.z, r3.w
		 133 : mad r3.w, r3.z, l (34.000000), l (1.000000)
		 134 : mul r3.z, r3.z, r3.w
		 135 : mul r3.w, r3.z, l (289.000000)
		 136 : ge r3.w, r3.w, -r3.w
		 137 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 138 : mul r3.z, r3.z, r5.w
		 139 : frc r3.z, r3.z
		 140 : mul r3.z, r3.z, r5.z
		 141 : mul r3.z, r3.z, l (0.024390)
		 142 : frc r3.z, r3.z
		 143 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
		 144 : round_ni r3.w, r3.w
		 145 : add r7.x, -r3.w, r3.z
		 146 : add r7.y, | r3.z | , l (-0.500000)
		 147 : dp2 r3.z, r7.xyxx, r7.xyxx
		 148 : rsq r3.z, r3.z
		 149 : mul r3.zw, r3.zzzz, r7.xxxy
		 150 : dp2 r2.y, r3.zwzz, r2.yzyy
		 151 : mad r2.z, r5.x, l (34.000000), l (1.000000)
		 152 : mul r2.z, r5.x, r2.z
		 153 : mul r3.z, r2.z, l (289.000000)
		 154 : ge r3.z, r3.z, -r3.z
		 155 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 156 : mul r2.z, r2.z, r3.w
		 157 : frc r2.z, r2.z
		 158 : mad r2.z, r3.z, r2.z, r5.y
		 159 : mad r3.z, r2.z, l (34.000000), l (1.000000)
		 160 : mul r2.z, r2.z, r3.z
		 161 : mul r3.z, r2.z, l (289.000000)
		 162 : ge r3.z, r3.z, -r3.z
		 163 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 164 : mul r2.z, r2.z, r3.w
		 165 : frc r2.z, r2.z
		 166 : mul r2.z, r2.z, r3.z
		 167 : mul r2.z, r2.z, l (0.024390)
		 168 : frc r2.z, r2.z
		 169 : mad r3.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
		 170 : round_ni r2.z, r3.w
		 171 : add r5.x, -r2.z, r3.z
		 172 : add r5.y, | r3.z | , l (-0.500000)
		 173 : dp2 r2.z, r5.xyxx, r5.xyxx
		 174 : rsq r2.z, r2.z
		 175 : mul r3.zw, r2.zzzz, r5.xxxy
		 176 : dp2 r2.z, r3.zwzz, r6.xyxx
		 177 : add r2.z, -r2.y, r2.z
		 178 : mad r2.y, r6.w, r2.z, r2.y
		 179 : add r2.z, -r2.y, r2.w
		 180 : mad r2.y, r6.z, r2.z, r2.y
		 181 : add r2.y, r2.y, l (0.500000)
		 182 : mul r2.zw, r3.xxxy, cb2[1].xxxx
		 183 : mad r3.xy, cb1[67].xxxx, cb2[6].xxxx, r3.xyxx
		 184 : mul r3.xy, r3.xyxx, cb2[5].wwww
		 185 : round_ni r3.zw, r2.zzzw
		 186 : frc r2.zw, r2.zzzw
		 187 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
		 188 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
		 189 : ge r6.xyzw, r6.xyzw, -r6.zwzw
		 190 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		 191 : mul r5.xy, r5.xyxx, r6.zwzz
		 192 : frc r5.xy, r5.xyxx
		 193 : mul r5.xy, r5.xyxx, r6.xyxx
		 194 : mad r5.z, r5.x, l (34.000000), l (1.000000)
		 195 : mul r5.x, r5.x, r5.z
		 196 : mul r5.z, r5.x, l (289.000000)
		 197 : ge r5.z, r5.z, -r5.z
		 198 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 199 : mul r5.x, r5.w, r5.x
		 200 : frc r5.x, r5.x
		 201 : mad r5.x, r5.z, r5.x, r5.y
		 202 : mad r5.y, r5.x, l (34.000000), l (1.000000)
		 203 : mul r5.x, r5.x, r5.y
		 204 : mul r5.y, r5.x, l (289.000000)
		 205 : ge r5.y, r5.y, -r5.y
		 206 : movc r5.yz, r5.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
		 207 : mul r5.x, r5.z, r5.x
		 208 : frc r5.x, r5.x
		 209 : mul r5.x, r5.x, r5.y
		 210 : mul r5.x, r5.x, l (0.024390)
		 211 : frc r5.x, r5.x
		 212 : mad r5.xy, r5.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
		 213 : round_ni r5.y, r5.y
		 214 : add r6.x, -r5.y, r5.x
		 215 : add r6.y, | r5.x | , l (-0.500000)
		 216 : dp2 r5.x, r6.xyxx, r6.xyxx
		 217 : rsq r5.x, r5.x
		 218 : mul r5.xy, r5.xxxx, r6.xyxx
		 219 : add r5.zw, r2.zzzw, l (0.000000, 0.000000, -1.000000, -1.000000)
		 220 : dp2 r5.x, r5.xyxx, r5.zwzz
		 221 : add r6.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
		 222 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
		 223 : ge r7.xyzw, r7.xyzw, -r7.xyzw
		 224 : movc r8.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		 225 : movc r7.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		 226 : mul r5.yz, r6.zzwz, r8.zzwz
		 227 : mul r6.xy, r6.xyxx, r7.zwzz
		 228 : frc r6.xy, r6.xyxx
		 229 : mul r6.xy, r6.xyxx, r7.xyxx
		 230 : frc r5.yz, r5.yyzy
		 231 : mul r5.yz, r5.yyzy, r8.xxyx
		 232 : mad r5.w, r5.y, l (34.000000), l (1.000000)
		 233 : mul r5.y, r5.y, r5.w
		 234 : mul r5.w, r5.y, l (289.000000)
		 235 : ge r5.w, r5.w, -r5.w
		 236 : movc r6.zw, r5.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 237 : mul r5.y, r5.y, r6.w
		 238 : frc r5.y, r5.y
		 239 : mad r5.y, r6.z, r5.y, r5.z
		 240 : mad r5.z, r5.y, l (34.000000), l (1.000000)
		 241 : mul r5.y, r5.y, r5.z
		 242 : mul r5.z, r5.y, l (289.000000)
		 243 : ge r5.z, r5.z, -r5.z
		 244 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 245 : mul r5.y, r5.w, r5.y
		 246 : frc r5.y, r5.y
		 247 : mul r5.y, r5.y, r5.z
		 248 : mul r5.y, r5.y, l (0.024390)
		 249 : frc r5.y, r5.y
		 250 : mad r5.yz, r5.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
		 251 : round_ni r5.z, r5.z
		 252 : add r7.x, -r5.z, r5.y
		 253 : add r7.y, | r5.y | , l (-0.500000)
		 254 : dp2 r5.y, r7.xyxx, r7.xyxx
		 255 : rsq r5.y, r5.y
		 256 : mul r5.yz, r5.yyyy, r7.xxyx
		 257 : add r7.xyzw, r2.zwzw, l (-0.000000, -1.000000, -1.000000, -0.000000)
		 258 : dp2 r5.y, r5.yzyy, r7.zwzz
		 259 : add r5.x, -r5.y, r5.x
		 260 : mul r5.zw, r2.zzzw, r2.zzzw
		 261 : mul r5.zw, r2.zzzw, r5.zzzw
		 262 : mad r6.zw, r2.zzzw, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
		 263 : mad r6.zw, r2.zzzw, r6.zzzw, l (0.000000, 0.000000, 10.000000, 10.000000)
		 264 : mul r5.zw, r5.zzzw, r6.zzzw
		 265 : mad r5.x, r5.w, r5.x, r5.y
		 266 : mul r8.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
		 267 : ge r8.xyzw, r8.xyzw, -r8.zwzw
		 268 : movc r8.xyzw, r8.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		 269 : mul r3.zw, r3.zzzw, r8.zzzw
		 270 : frc r3.zw, r3.zzzw
		 271 : mul r3.zw, r3.zzzw, r8.xxxy
		 272 : mad r5.y, r3.z, l (34.000000), l (1.000000)
		 273 : mul r3.z, r3.z, r5.y
		 274 : mul r5.y, r3.z, l (289.000000)
		 275 : ge r5.y, r5.y, -r5.y
		 276 : movc r6.zw, r5.yyyy, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 277 : mul r3.z, r3.z, r6.w
		 278 : frc r3.z, r3.z
		 279 : mad r3.z, r6.z, r3.z, r3.w
		 280 : mad r3.w, r3.z, l (34.000000), l (1.000000)
		 281 : mul r3.z, r3.z, r3.w
		 282 : mul r3.w, r3.z, l (289.000000)
		 283 : ge r3.w, r3.w, -r3.w
		 284 : movc r6.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 285 : mul r3.z, r3.z, r6.w
		 286 : frc r3.z, r3.z
		 287 : mul r3.z, r3.z, r6.z
		 288 : mul r3.z, r3.z, l (0.024390)
		 289 : frc r3.z, r3.z
		 290 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
		 291 : round_ni r3.w, r3.w
		 292 : add r8.x, -r3.w, r3.z
		 293 : add r8.y, | r3.z | , l (-0.500000)
		 294 : dp2 r3.z, r8.xyxx, r8.xyxx
		 295 : rsq r3.z, r3.z
		 296 : mul r3.zw, r3.zzzz, r8.xxxy
		 297 : dp2 r2.z, r3.zwzz, r2.zwzz
		 298 : mad r2.w, r6.x, l (34.000000), l (1.000000)
		 299 : mul r2.w, r6.x, r2.w
		 300 : mul r3.z, r2.w, l (289.000000)
		 301 : ge r3.z, r3.z, -r3.z
		 302 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 303 : mul r2.w, r2.w, r3.w
		 304 : frc r2.w, r2.w
		 305 : mad r2.w, r3.z, r2.w, r6.y
		 306 : mad r3.z, r2.w, l (34.000000), l (1.000000)
		 307 : mul r2.w, r2.w, r3.z
		 308 : mul r3.z, r2.w, l (289.000000)
		 309 : ge r3.z, r3.z, -r3.z
		 310 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 311 : mul r2.w, r2.w, r3.w
		 312 : frc r2.w, r2.w
		 313 : mul r2.w, r2.w, r3.z
		 314 : mul r2.w, r2.w, l (0.024390)
		 315 : frc r2.w, r2.w
		 316 : mad r3.zw, r2.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
		 317 : round_ni r2.w, r3.w
		 318 : add r6.x, -r2.w, r3.z
		 319 : add r6.y, | r3.z | , l (-0.500000)
		 320 : dp2 r2.w, r6.xyxx, r6.xyxx
		 321 : rsq r2.w, r2.w
		 322 : mul r3.zw, r2.wwww, r6.xxxy
		 323 : dp2 r2.w, r3.zwzz, r7.xyxx
		 324 : add r2.w, -r2.z, r2.w
		 325 : mad r2.z, r5.w, r2.w, r2.z
		 326 : add r2.w, -r2.z, r5.x
		 327 : mad r2.z, r5.z, r2.w, r2.z
		 328 : add r2.y, r2.y, r2.z
		 329 : add r2.y, r2.y, l (0.500000)
		 330 : mul_sat r2.y, r2.y, l (0.500000)
		 331 : log r2.y, r2.y
		 332 : mul r2.y, r2.y, cb2[5].z
		 333 : exp r2.y, r2.y
		 334 : add r2.y, r2.y, -cb2[2].x
		 335 : add r2.zw, -cb2[2].zzzx, cb2[2].wwwy
		 336 : mul r2.y, r2.z, r2.y
		 337 : div r2.y, r2.y, r2.w
		 338 : add r2.y, r2.y, cb2[2].z
		 339 : add r2.y, | r2.y | , -cb2[5].x
		 340 : add r2.z, -cb2[5].x, cb2[5].y
		 341 : div r2.z, l (1.000000, 1.000000, 1.000000, 1.000000), r2.z
		 342 : mul_sat r2.y, r2.z, r2.y
		 343 : mad r2.z, r2.y, l (-2.000000), l (3.000000)
		 344 : mul r2.y, r2.y, r2.y
		 345 : round_ni r3.zw, r3.xxxy
		 346 : frc r3.xy, r3.xyxx
		 347 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
		 348 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
		 349 : ge r6.xyzw, r6.xyzw, -r6.zwzw
		 350 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		 351 : mul r5.xy, r5.xyxx, r6.zwzz
		 352 : frc r5.xy, r5.xyxx
		 353 : mul r5.xy, r5.xyxx, r6.xyxx
		 354 : mad r2.w, r5.x, l (34.000000), l (1.000000)
		 355 : mul r2.w, r5.x, r2.w
		 356 : mul r5.x, r2.w, l (289.000000)
		 357 : ge r5.x, r5.x, -r5.x
		 358 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
		 359 : mul r2.w, r2.w, r5.z
		 360 : frc r2.w, r2.w
		 361 : mad r2.w, r5.x, r2.w, r5.y
		 362 : mad r5.x, r2.w, l (34.000000), l (1.000000)
		 363 : mul r2.w, r2.w, r5.x
		 364 : mul r5.x, r2.w, l (289.000000)
		 365 : ge r5.x, r5.x, -r5.x
		 366 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
		 367 : mul r2.w, r2.w, r5.y
		 368 : frc r2.w, r2.w
		 369 : mul r2.w, r2.w, r5.x
		 370 : mul r2.w, r2.w, l (0.024390)
		 371 : frc r2.w, r2.w
		 372 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
		 373 : round_ni r2.w, r5.y
		 374 : add r6.x, -r2.w, r5.x
		 375 : add r6.y, | r5.x | , l (-0.500000)
		 376 : dp2 r2.w, r6.xyxx, r6.xyxx
		 377 : rsq r2.w, r2.w
		 378 : mul r5.xy, r2.wwww, r6.xyxx
		 379 : add r5.zw, r3.xxxy, l (0.000000, 0.000000, -1.000000, -1.000000)
		 380 : dp2 r2.w, r5.xyxx, r5.zwzz
		 381 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
		 382 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
		 383 : ge r6.xyzw, r6.xyzw, -r6.xyzw
		 384 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		 385 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		 386 : mul r5.zw, r5.zzzw, r7.zzzw
		 387 : mul r5.xy, r5.xyxx, r6.zwzz
		 388 : frc r5.xyzw, r5.xyzw
		 389 : mul r5.xy, r5.xyxx, r6.xyxx
		 390 : mul r5.zw, r5.zzzw, r7.xxxy
		 391 : mad r6.x, r5.z, l (34.000000), l (1.000000)
		 392 : mul r5.z, r5.z, r6.x
		 393 : mul r6.x, r5.z, l (289.000000)
		 394 : ge r6.x, r6.x, -r6.x
		 395 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
		 396 : mul r5.z, r5.z, r6.y
		 397 : frc r5.z, r5.z
		 398 : mad r5.z, r6.x, r5.z, r5.w
		 399 : mad r5.w, r5.z, l (34.000000), l (1.000000)
		 400 : mul r5.z, r5.z, r5.w
		 401 : mul r5.w, r5.z, l (289.000000)
		 402 : ge r5.w, r5.w, -r5.w
		 403 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
		 404 : mul r5.z, r5.z, r6.y
		 405 : frc r5.z, r5.z
		 406 : mul r5.z, r5.z, r6.x
		 407 : mul r5.z, r5.z, l (0.024390)
		 408 : frc r5.z, r5.z
		 409 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
		 410 : round_ni r5.w, r5.w
		 411 : add r6.x, -r5.w, r5.z
		 412 : add r6.y, | r5.z | , l (-0.500000)
		 413 : dp2 r5.z, r6.xyxx, r6.xyxx
		 414 : rsq r5.z, r5.z
		 415 : mul r5.zw, r5.zzzz, r6.xxxy
		 416 : add r6.xyzw, r3.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
		 417 : dp2 r5.z, r5.zwzz, r6.zwzz
		 418 : add r2.w, r2.w, -r5.z
		 419 : mul r6.zw, r3.xxxy, r3.xxxy
		 420 : mul r6.zw, r3.xxxy, r6.zzzw
		 421 : mad r7.xy, r3.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
		 422 : mad r7.xy, r3.xyxx, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
		 423 : mul r6.zw, r6.zzzw, r7.xxxy
		 424 : mad r2.w, r6.w, r2.w, r5.z
		 425 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
		 426 : ge r7.xyzw, r7.xyzw, -r7.zwzw
		 427 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
		 428 : mul r3.zw, r3.zzzw, r7.zzzw
		 429 : frc r3.zw, r3.zzzw
		 430 : mul r3.zw, r3.zzzw, r7.xxxy
		 431 : mad r5.z, r3.z, l (34.000000), l (1.000000)
		 432 : mul r3.z, r3.z, r5.z
		 433 : mul r5.z, r3.z, l (289.000000)
		 434 : ge r5.z, r5.z, -r5.z
		 435 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 436 : mul r3.z, r3.z, r5.w
		 437 : frc r3.z, r3.z
		 438 : mad r3.z, r5.z, r3.z, r3.w
		 439 : mad r3.w, r3.z, l (34.000000), l (1.000000)
		 440 : mul r3.z, r3.z, r3.w
		 441 : mul r3.w, r3.z, l (289.000000)
		 442 : ge r3.w, r3.w, -r3.w
		 443 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 444 : mul r3.z, r3.z, r5.w
		 445 : frc r3.z, r3.z
		 446 : mul r3.z, r3.z, r5.z
		 447 : mul r3.z, r3.z, l (0.024390)
		 448 : frc r3.z, r3.z
		 449 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
		 450 : round_ni r3.w, r3.w
		 451 : add r7.x, -r3.w, r3.z
		 452 : add r7.y, | r3.z | , l (-0.500000)
		 453 : dp2 r3.z, r7.xyxx, r7.xyxx
		 454 : rsq r3.z, r3.z
		 455 : mul r3.zw, r3.zzzz, r7.xxxy
		 456 : dp2 r3.x, r3.zwzz, r3.xyxx
		 457 : mad r3.y, r5.x, l (34.000000), l (1.000000)
		 458 : mul r3.y, r5.x, r3.y
		 459 : mul r3.z, r3.y, l (289.000000)
		 460 : ge r3.z, r3.z, -r3.z
		 461 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 462 : mul r3.y, r3.w, r3.y
		 463 : frc r3.y, r3.y
		 464 : mad r3.y, r3.z, r3.y, r5.y
		 465 : mad r3.z, r3.y, l (34.000000), l (1.000000)
		 466 : mul r3.y, r3.y, r3.z
		 467 : mul r3.z, r3.y, l (289.000000)
		 468 : ge r3.z, r3.z, -r3.z
		 469 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
		 470 : mul r3.y, r3.w, r3.y
		 471 : frc r3.y, r3.y
		 472 : mul r3.y, r3.y, r3.z
		 473 : mul r3.y, r3.y, l (0.024390)
		 474 : frc r3.y, r3.y
		 475 : mad r3.yz, r3.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
		 476 : round_ni r3.z, r3.z
		 477 : add r5.x, -r3.z, r3.y
		 478 : add r5.y, | r3.y | , l (-0.500000)
		 479 : dp2 r3.y, r5.xyxx, r5.xyxx
		 480 : rsq r3.y, r3.y
		 481 : mul r3.yz, r3.yyyy, r5.xxyx
		 482 : dp2 r3.y, r3.yzyy, r6.xyxx
		 483 : add r3.y, -r3.x, r3.y
		 484 : mad r3.x, r6.w, r3.y, r3.x
		 485 : add r2.w, r2.w, -r3.x
		 486 : mad r2.w, r6.z, r2.w, r3.x
		 487 : add r2.w, r2.w, l (0.500000)
		 488 : mul r2.w, r2.w, cb2[6].y
		 489 : mad r2.y, r2.z, r2.y, r2.w
		 490 : add r2.z, cb2[6].y, l (1.000000)
		 491 : div r2.y, r2.y, r2.z
		 492 : mul r2.yzw, r2.yyyy, v1.xxyz
		 493 : mad r2.yzw, r2.yyzw, cb2[1].zzzz, v0.xxyz
		 494 : dp3 r3.x, v1.xyzx, cb0[4].xyzx
		 495 : dp3 r3.y, v1.xyzx, cb0[5].xyzx
		 496 : dp3 r3.z, v1.xyzx, cb0[6].xyzx
		 497 : dp3 r3.w, r3.xyzx, r3.xyzx
		 498 : max r3.w, r3.w, l (0.000000)
		 499 : rsq r3.w, r3.w
		 500 : mul r3.xyz, r3.wwww, r3.xyzx
		 501 : mul r3.w, r2.x, r2.x
		 502 : mul r2.x, r2.x, r3.w
		 503 : mad r2.xyz, r3.xyzx, r2.xxxx, r2.yzwy
		 504 : mov r2.w, l (1.000000)
		 505 : dp4 r3.y, r4.xyzw, r2.xyzw
		 506 : mul r4.xyzw, r3.yyyy, cb1[17].xyzw
		 507 : dp4 r3.x, r0.xyzw, r2.xyzw
		 508 : dp4 r3.z, r1.xyzw, r2.xyzw
		 509 : mad r0.xyzw, cb1[16].xyzw, r3.xxxx, r4.xyzw
		 510 : mov o1.xyz, r3.xyzx
		 511 : mad r0.xyzw, cb1[18].xyzw, r3.zzzz, r0.xyzw
		 512 : add o0.xyzw, r0.xyzw, cb1[19].xyzw
		 513 : ret
				  // Approximately 0 instruction slots used


				  -- Hardware tier variant : Tier 1
				  --Fragment shader for "d3d11" :
				  Shader Disassembly :
			  //
			  // Generated by Microsoft (R) D3D Shader Disassembler
			  //
			  //
			  // Input signature:
			  //
			  // Name                 Index   Mask Register SysValue  Format   Used
			  // -------------------- ----- ------ -------- -------- ------- ------
			  // SV_POSITION              0   xyzw        0      POS   float       
			  // TEXCOORD                 0   xyz         1     NONE   float       
			  //
			  //
			  // Output signature:
			  //
			  // Name                 Index   Mask Register SysValue  Format   Used
			  // -------------------- ----- ------ -------- -------- ------- ------
			  // no Output
					ps_5_0
					dcl_globalFlags refactoringAllowed
				 0: ret
						// Approximately 0 instruction slots used


						 }


		// Stats for Vertex shader:
		//        d3d11: 459 math
		Pass {
		 Name "DepthForwardOnly"
		 Tags { "LIGHTMODE" = "DepthForwardOnly" "QUEUE" = "Transparent+0" "RenderType" = "HDUnlitShader" "RenderPipeline" = "HDRenderPipeline" }
		 Cull[_CullMode]
		 Stencil {
		  Ref[_StencilRefDepth]
		  WriteMask[_StencilWriteMaskDepth]
		  Pass Replace
		 }
		 ColorMask0 0
						//////////////////////////////////
						//                              //
						//      Compiled programs       //
						//                              //
						//////////////////////////////////
					  //////////////////////////////////////////////////////
					  Global Keywords : <none>
					  Local Keywords : <none>
					  --Hardware tier variant : Tier 1
					  --Vertex shader for "d3d11" :
						// Stats: 459 math, 9 temp registers
						Uses vertex data channel "Vertex"
						Uses vertex data channel "Normal"

						Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
						  Matrix4x4 unity_ObjectToWorld at 0
						  Matrix4x4 unity_WorldToObject at 64
						}
						Constant Buffer "UnityGlobal" (7216 bytes) on slot 1 {
						  Matrix4x4 _ViewProjMatrix at 256
						  Vector3 _WorldSpaceCameraPos at 640
						  Vector4 _TimeParameters at 1072
						}
						Constant Buffer "UnityPerMaterial" (304 bytes) on slot 2 {
						  Vector4 Vector4_59D9B7DE at 0
						  Float Vector1_C24F477F at 16
						  Float Vector1_3F53ED5D at 20
						  Float Vector1_34A2131D at 24
						  Vector4 Vector4_BD02EA1F at 32
						  Float Vector1_B73C588D at 80
						  Float Vector1_157C4927 at 84
						  Float Vector1_31818DD2 at 88
						  Float Vector1_2E449449 at 92
						  Float Vector1_1100DBB4 at 96
						  Float Vector1_745E6F83 at 100
						  Float Vector1_835232BE at 108
						}

						Shader Disassembly :
						//
						// Generated by Microsoft (R) D3D Shader Disassembler
						//
						//
						// Input signature:
						//
						// Name                 Index   Mask Register SysValue  Format   Used
						// -------------------- ----- ------ -------- -------- ------- ------
						// POSITION                 0   xyz         0     NONE   float   xyz 
						// NORMAL                   0   xyz         1     NONE   float   xyz 
						// TANGENT                  0   xyzw        2     NONE   float       
						//
						//
						// Output signature:
						//
						// Name                 Index   Mask Register SysValue  Format   Used
						// -------------------- ----- ------ -------- -------- ------- ------
						// SV_POSITION              0   xyzw        0      POS   float   xyzw
						// TEXCOORD                 0   xyz         1     NONE   float   xyz 
						//
							  vs_5_0
							  dcl_globalFlags refactoringAllowed
							  dcl_constantbuffer CB0[7], immediateIndexed
							  dcl_constantbuffer CB1[68], immediateIndexed
							  dcl_constantbuffer CB2[7], immediateIndexed
							  dcl_input v0.xyz
							  dcl_input v1.xyz
							  dcl_output_siv o0.xyzw, position
							  dcl_output o1.xyz
							  dcl_temps 9
						   0: mov r0.x, cb0[0].x
						   1 : mov r0.y, cb0[1].x
						   2 : mov r0.z, cb0[2].x
						   3 : add r1.xyw, cb0[3].xyxz, -cb1[40].xyxz
						   4 : mov r0.w, r1.x
						   5 : mov r2.xyz, v0.xyzx
						   6 : mov r2.w, l (1.000000)
						   7 : dp4 r3.x, r0.xyzw, r2.xyzw
						   8 : mov r4.w, r1.y
						   9 : mov r4.x, cb0[0].y
						  10 : mov r4.y, cb0[1].y
						  11 : mov r4.z, cb0[2].y
						  12 : dp4 r3.y, r4.xyzw, r2.xyzw
						  13 : mov r1.x, cb0[0].z
						  14 : mov r1.y, cb0[1].z
						  15 : mov r1.z, cb0[2].z
						  16 : dp4 r3.z, r1.xyzw, r2.xyzw
						  17 : add r2.xyz, r3.xyzx, cb1[40].xyzx
						  18 : mul r2.w, cb2[0].w, l (0.017453)
						  19 : sincos r3.x, r5.x, r2.w
						  20 : add r2.w, -r5.x, l (1.000000)
						  21 : dp3 r3.y, cb2[0].xyzx, cb2[0].xyzx
						  22 : rsq r3.y, r3.y
						  23 : mul r3.yzw, r3.yyyy, cb2[0].zzyx
						  24 : mul r6.xyzw, r2.wwww, r3.wwyz
						  25 : mul r5.yzw, r3.xxxx, r3.yyzw
						  26 : mad r7.xy, r6.xwxx, r3.wzww, r5.xxxx
						  27 : mad r7.z, r6.y, r3.z, -r5.y
						  28 : mad r8.xy, r6.zyzz, r3.wzww, r5.zyzz
						  29 : mad r8.z, r6.w, r3.y, -r5.w
						  30 : mov r7.w, r8.x
						  31 : dp3 r3.x, r7.xzwx, r2.xyzx
						  32 : mov r8.w, r7.y
						  33 : dp3 r3.y, r8.ywzy, r2.xyzx
						  34 : add r2.xyz, -r2.xyzx, cb0[3].xyzx
						  35 : dp3 r2.x, r2.xyzx, r2.xyzx
						  36 : sqrt r2.x, r2.x
						  37 : div r2.x, r2.x, cb2[6].w
						  38 : mad r2.yz, cb1[67].xxxx, cb2[1].yyyy, r3.xxyx
						  39 : mul r2.yz, r2.yyzy, cb2[1].xxxx
						  40 : round_ni r3.zw, r2.yyyz
						  41 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
						  42 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
						  43 : ge r6.xyzw, r6.xyzw, -r6.zwzw
						  44 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						  45 : mul r5.xy, r5.xyxx, r6.zwzz
						  46 : frc r5.xy, r5.xyxx
						  47 : mul r5.xy, r5.xyxx, r6.xyxx
						  48 : mad r2.w, r5.x, l (34.000000), l (1.000000)
						  49 : mul r2.w, r5.x, r2.w
						  50 : mul r5.x, r2.w, l (289.000000)
						  51 : ge r5.x, r5.x, -r5.x
						  52 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
						  53 : mul r2.w, r2.w, r5.z
						  54 : frc r2.yzw, r2.yyzw
						  55 : mad r2.w, r5.x, r2.w, r5.y
						  56 : mad r5.x, r2.w, l (34.000000), l (1.000000)
						  57 : mul r2.w, r2.w, r5.x
						  58 : mul r5.x, r2.w, l (289.000000)
						  59 : ge r5.x, r5.x, -r5.x
						  60 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
						  61 : mul r2.w, r2.w, r5.y
						  62 : frc r2.w, r2.w
						  63 : mul r2.w, r2.w, r5.x
						  64 : mul r2.w, r2.w, l (0.024390)
						  65 : frc r2.w, r2.w
						  66 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
						  67 : round_ni r2.w, r5.y
						  68 : add r6.x, -r2.w, r5.x
						  69 : add r6.y, | r5.x | , l (-0.500000)
						  70 : dp2 r2.w, r6.xyxx, r6.xyxx
						  71 : rsq r2.w, r2.w
						  72 : mul r5.xy, r2.wwww, r6.xyxx
						  73 : add r5.zw, r2.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
						  74 : dp2 r2.w, r5.xyxx, r5.zwzz
						  75 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
						  76 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
						  77 : ge r6.xyzw, r6.xyzw, -r6.xyzw
						  78 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						  79 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						  80 : mul r5.zw, r5.zzzw, r7.zzzw
						  81 : mul r5.xy, r5.xyxx, r6.zwzz
						  82 : frc r5.xyzw, r5.xyzw
						  83 : mul r5.xy, r5.xyxx, r6.xyxx
						  84 : mul r5.zw, r5.zzzw, r7.xxxy
						  85 : mad r6.x, r5.z, l (34.000000), l (1.000000)
						  86 : mul r5.z, r5.z, r6.x
						  87 : mul r6.x, r5.z, l (289.000000)
						  88 : ge r6.x, r6.x, -r6.x
						  89 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
						  90 : mul r5.z, r5.z, r6.y
						  91 : frc r5.z, r5.z
						  92 : mad r5.z, r6.x, r5.z, r5.w
						  93 : mad r5.w, r5.z, l (34.000000), l (1.000000)
						  94 : mul r5.z, r5.z, r5.w
						  95 : mul r5.w, r5.z, l (289.000000)
						  96 : ge r5.w, r5.w, -r5.w
						  97 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
						  98 : mul r5.z, r5.z, r6.y
						  99 : frc r5.z, r5.z
						 100 : mul r5.z, r5.z, r6.x
						 101 : mul r5.z, r5.z, l (0.024390)
						 102 : frc r5.z, r5.z
						 103 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
						 104 : round_ni r5.w, r5.w
						 105 : add r6.x, -r5.w, r5.z
						 106 : add r6.y, | r5.z | , l (-0.500000)
						 107 : dp2 r5.z, r6.xyxx, r6.xyxx
						 108 : rsq r5.z, r5.z
						 109 : mul r5.zw, r5.zzzz, r6.xxxy
						 110 : add r6.xyzw, r2.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
						 111 : dp2 r5.z, r5.zwzz, r6.zwzz
						 112 : add r2.w, r2.w, -r5.z
						 113 : mul r6.zw, r2.yyyz, r2.yyyz
						 114 : mul r6.zw, r2.yyyz, r6.zzzw
						 115 : mad r7.xy, r2.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
						 116 : mad r7.xy, r2.yzyy, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
						 117 : mul r6.zw, r6.zzzw, r7.xxxy
						 118 : mad r2.w, r6.w, r2.w, r5.z
						 119 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
						 120 : ge r7.xyzw, r7.xyzw, -r7.zwzw
						 121 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						 122 : mul r3.zw, r3.zzzw, r7.zzzw
						 123 : frc r3.zw, r3.zzzw
						 124 : mul r3.zw, r3.zzzw, r7.xxxy
						 125 : mad r5.z, r3.z, l (34.000000), l (1.000000)
						 126 : mul r3.z, r3.z, r5.z
						 127 : mul r5.z, r3.z, l (289.000000)
						 128 : ge r5.z, r5.z, -r5.z
						 129 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 130 : mul r3.z, r3.z, r5.w
						 131 : frc r3.z, r3.z
						 132 : mad r3.z, r5.z, r3.z, r3.w
						 133 : mad r3.w, r3.z, l (34.000000), l (1.000000)
						 134 : mul r3.z, r3.z, r3.w
						 135 : mul r3.w, r3.z, l (289.000000)
						 136 : ge r3.w, r3.w, -r3.w
						 137 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 138 : mul r3.z, r3.z, r5.w
						 139 : frc r3.z, r3.z
						 140 : mul r3.z, r3.z, r5.z
						 141 : mul r3.z, r3.z, l (0.024390)
						 142 : frc r3.z, r3.z
						 143 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
						 144 : round_ni r3.w, r3.w
						 145 : add r7.x, -r3.w, r3.z
						 146 : add r7.y, | r3.z | , l (-0.500000)
						 147 : dp2 r3.z, r7.xyxx, r7.xyxx
						 148 : rsq r3.z, r3.z
						 149 : mul r3.zw, r3.zzzz, r7.xxxy
						 150 : dp2 r2.y, r3.zwzz, r2.yzyy
						 151 : mad r2.z, r5.x, l (34.000000), l (1.000000)
						 152 : mul r2.z, r5.x, r2.z
						 153 : mul r3.z, r2.z, l (289.000000)
						 154 : ge r3.z, r3.z, -r3.z
						 155 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 156 : mul r2.z, r2.z, r3.w
						 157 : frc r2.z, r2.z
						 158 : mad r2.z, r3.z, r2.z, r5.y
						 159 : mad r3.z, r2.z, l (34.000000), l (1.000000)
						 160 : mul r2.z, r2.z, r3.z
						 161 : mul r3.z, r2.z, l (289.000000)
						 162 : ge r3.z, r3.z, -r3.z
						 163 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 164 : mul r2.z, r2.z, r3.w
						 165 : frc r2.z, r2.z
						 166 : mul r2.z, r2.z, r3.z
						 167 : mul r2.z, r2.z, l (0.024390)
						 168 : frc r2.z, r2.z
						 169 : mad r3.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
						 170 : round_ni r2.z, r3.w
						 171 : add r5.x, -r2.z, r3.z
						 172 : add r5.y, | r3.z | , l (-0.500000)
						 173 : dp2 r2.z, r5.xyxx, r5.xyxx
						 174 : rsq r2.z, r2.z
						 175 : mul r3.zw, r2.zzzz, r5.xxxy
						 176 : dp2 r2.z, r3.zwzz, r6.xyxx
						 177 : add r2.z, -r2.y, r2.z
						 178 : mad r2.y, r6.w, r2.z, r2.y
						 179 : add r2.z, -r2.y, r2.w
						 180 : mad r2.y, r6.z, r2.z, r2.y
						 181 : add r2.y, r2.y, l (0.500000)
						 182 : mul r2.zw, r3.xxxy, cb2[1].xxxx
						 183 : mad r3.xy, cb1[67].xxxx, cb2[6].xxxx, r3.xyxx
						 184 : mul r3.xy, r3.xyxx, cb2[5].wwww
						 185 : round_ni r3.zw, r2.zzzw
						 186 : frc r2.zw, r2.zzzw
						 187 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
						 188 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
						 189 : ge r6.xyzw, r6.xyzw, -r6.zwzw
						 190 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						 191 : mul r5.xy, r5.xyxx, r6.zwzz
						 192 : frc r5.xy, r5.xyxx
						 193 : mul r5.xy, r5.xyxx, r6.xyxx
						 194 : mad r5.z, r5.x, l (34.000000), l (1.000000)
						 195 : mul r5.x, r5.x, r5.z
						 196 : mul r5.z, r5.x, l (289.000000)
						 197 : ge r5.z, r5.z, -r5.z
						 198 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 199 : mul r5.x, r5.w, r5.x
						 200 : frc r5.x, r5.x
						 201 : mad r5.x, r5.z, r5.x, r5.y
						 202 : mad r5.y, r5.x, l (34.000000), l (1.000000)
						 203 : mul r5.x, r5.x, r5.y
						 204 : mul r5.y, r5.x, l (289.000000)
						 205 : ge r5.y, r5.y, -r5.y
						 206 : movc r5.yz, r5.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
						 207 : mul r5.x, r5.z, r5.x
						 208 : frc r5.x, r5.x
						 209 : mul r5.x, r5.x, r5.y
						 210 : mul r5.x, r5.x, l (0.024390)
						 211 : frc r5.x, r5.x
						 212 : mad r5.xy, r5.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
						 213 : round_ni r5.y, r5.y
						 214 : add r6.x, -r5.y, r5.x
						 215 : add r6.y, | r5.x | , l (-0.500000)
						 216 : dp2 r5.x, r6.xyxx, r6.xyxx
						 217 : rsq r5.x, r5.x
						 218 : mul r5.xy, r5.xxxx, r6.xyxx
						 219 : add r5.zw, r2.zzzw, l (0.000000, 0.000000, -1.000000, -1.000000)
						 220 : dp2 r5.x, r5.xyxx, r5.zwzz
						 221 : add r6.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
						 222 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
						 223 : ge r7.xyzw, r7.xyzw, -r7.xyzw
						 224 : movc r8.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						 225 : movc r7.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						 226 : mul r5.yz, r6.zzwz, r8.zzwz
						 227 : mul r6.xy, r6.xyxx, r7.zwzz
						 228 : frc r6.xy, r6.xyxx
						 229 : mul r6.xy, r6.xyxx, r7.xyxx
						 230 : frc r5.yz, r5.yyzy
						 231 : mul r5.yz, r5.yyzy, r8.xxyx
						 232 : mad r5.w, r5.y, l (34.000000), l (1.000000)
						 233 : mul r5.y, r5.y, r5.w
						 234 : mul r5.w, r5.y, l (289.000000)
						 235 : ge r5.w, r5.w, -r5.w
						 236 : movc r6.zw, r5.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 237 : mul r5.y, r5.y, r6.w
						 238 : frc r5.y, r5.y
						 239 : mad r5.y, r6.z, r5.y, r5.z
						 240 : mad r5.z, r5.y, l (34.000000), l (1.000000)
						 241 : mul r5.y, r5.y, r5.z
						 242 : mul r5.z, r5.y, l (289.000000)
						 243 : ge r5.z, r5.z, -r5.z
						 244 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 245 : mul r5.y, r5.w, r5.y
						 246 : frc r5.y, r5.y
						 247 : mul r5.y, r5.y, r5.z
						 248 : mul r5.y, r5.y, l (0.024390)
						 249 : frc r5.y, r5.y
						 250 : mad r5.yz, r5.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
						 251 : round_ni r5.z, r5.z
						 252 : add r7.x, -r5.z, r5.y
						 253 : add r7.y, | r5.y | , l (-0.500000)
						 254 : dp2 r5.y, r7.xyxx, r7.xyxx
						 255 : rsq r5.y, r5.y
						 256 : mul r5.yz, r5.yyyy, r7.xxyx
						 257 : add r7.xyzw, r2.zwzw, l (-0.000000, -1.000000, -1.000000, -0.000000)
						 258 : dp2 r5.y, r5.yzyy, r7.zwzz
						 259 : add r5.x, -r5.y, r5.x
						 260 : mul r5.zw, r2.zzzw, r2.zzzw
						 261 : mul r5.zw, r2.zzzw, r5.zzzw
						 262 : mad r6.zw, r2.zzzw, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
						 263 : mad r6.zw, r2.zzzw, r6.zzzw, l (0.000000, 0.000000, 10.000000, 10.000000)
						 264 : mul r5.zw, r5.zzzw, r6.zzzw
						 265 : mad r5.x, r5.w, r5.x, r5.y
						 266 : mul r8.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
						 267 : ge r8.xyzw, r8.xyzw, -r8.zwzw
						 268 : movc r8.xyzw, r8.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						 269 : mul r3.zw, r3.zzzw, r8.zzzw
						 270 : frc r3.zw, r3.zzzw
						 271 : mul r3.zw, r3.zzzw, r8.xxxy
						 272 : mad r5.y, r3.z, l (34.000000), l (1.000000)
						 273 : mul r3.z, r3.z, r5.y
						 274 : mul r5.y, r3.z, l (289.000000)
						 275 : ge r5.y, r5.y, -r5.y
						 276 : movc r6.zw, r5.yyyy, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 277 : mul r3.z, r3.z, r6.w
						 278 : frc r3.z, r3.z
						 279 : mad r3.z, r6.z, r3.z, r3.w
						 280 : mad r3.w, r3.z, l (34.000000), l (1.000000)
						 281 : mul r3.z, r3.z, r3.w
						 282 : mul r3.w, r3.z, l (289.000000)
						 283 : ge r3.w, r3.w, -r3.w
						 284 : movc r6.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 285 : mul r3.z, r3.z, r6.w
						 286 : frc r3.z, r3.z
						 287 : mul r3.z, r3.z, r6.z
						 288 : mul r3.z, r3.z, l (0.024390)
						 289 : frc r3.z, r3.z
						 290 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
						 291 : round_ni r3.w, r3.w
						 292 : add r8.x, -r3.w, r3.z
						 293 : add r8.y, | r3.z | , l (-0.500000)
						 294 : dp2 r3.z, r8.xyxx, r8.xyxx
						 295 : rsq r3.z, r3.z
						 296 : mul r3.zw, r3.zzzz, r8.xxxy
						 297 : dp2 r2.z, r3.zwzz, r2.zwzz
						 298 : mad r2.w, r6.x, l (34.000000), l (1.000000)
						 299 : mul r2.w, r6.x, r2.w
						 300 : mul r3.z, r2.w, l (289.000000)
						 301 : ge r3.z, r3.z, -r3.z
						 302 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 303 : mul r2.w, r2.w, r3.w
						 304 : frc r2.w, r2.w
						 305 : mad r2.w, r3.z, r2.w, r6.y
						 306 : mad r3.z, r2.w, l (34.000000), l (1.000000)
						 307 : mul r2.w, r2.w, r3.z
						 308 : mul r3.z, r2.w, l (289.000000)
						 309 : ge r3.z, r3.z, -r3.z
						 310 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 311 : mul r2.w, r2.w, r3.w
						 312 : frc r2.w, r2.w
						 313 : mul r2.w, r2.w, r3.z
						 314 : mul r2.w, r2.w, l (0.024390)
						 315 : frc r2.w, r2.w
						 316 : mad r3.zw, r2.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
						 317 : round_ni r2.w, r3.w
						 318 : add r6.x, -r2.w, r3.z
						 319 : add r6.y, | r3.z | , l (-0.500000)
						 320 : dp2 r2.w, r6.xyxx, r6.xyxx
						 321 : rsq r2.w, r2.w
						 322 : mul r3.zw, r2.wwww, r6.xxxy
						 323 : dp2 r2.w, r3.zwzz, r7.xyxx
						 324 : add r2.w, -r2.z, r2.w
						 325 : mad r2.z, r5.w, r2.w, r2.z
						 326 : add r2.w, -r2.z, r5.x
						 327 : mad r2.z, r5.z, r2.w, r2.z
						 328 : add r2.y, r2.y, r2.z
						 329 : add r2.y, r2.y, l (0.500000)
						 330 : mul_sat r2.y, r2.y, l (0.500000)
						 331 : log r2.y, r2.y
						 332 : mul r2.y, r2.y, cb2[5].z
						 333 : exp r2.y, r2.y
						 334 : add r2.y, r2.y, -cb2[2].x
						 335 : add r2.zw, -cb2[2].zzzx, cb2[2].wwwy
						 336 : mul r2.y, r2.z, r2.y
						 337 : div r2.y, r2.y, r2.w
						 338 : add r2.y, r2.y, cb2[2].z
						 339 : add r2.y, | r2.y | , -cb2[5].x
						 340 : add r2.z, -cb2[5].x, cb2[5].y
						 341 : div r2.z, l (1.000000, 1.000000, 1.000000, 1.000000), r2.z
						 342 : mul_sat r2.y, r2.z, r2.y
						 343 : mad r2.z, r2.y, l (-2.000000), l (3.000000)
						 344 : mul r2.y, r2.y, r2.y
						 345 : round_ni r3.zw, r3.xxxy
						 346 : frc r3.xy, r3.xyxx
						 347 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
						 348 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
						 349 : ge r6.xyzw, r6.xyzw, -r6.zwzw
						 350 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						 351 : mul r5.xy, r5.xyxx, r6.zwzz
						 352 : frc r5.xy, r5.xyxx
						 353 : mul r5.xy, r5.xyxx, r6.xyxx
						 354 : mad r2.w, r5.x, l (34.000000), l (1.000000)
						 355 : mul r2.w, r5.x, r2.w
						 356 : mul r5.x, r2.w, l (289.000000)
						 357 : ge r5.x, r5.x, -r5.x
						 358 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
						 359 : mul r2.w, r2.w, r5.z
						 360 : frc r2.w, r2.w
						 361 : mad r2.w, r5.x, r2.w, r5.y
						 362 : mad r5.x, r2.w, l (34.000000), l (1.000000)
						 363 : mul r2.w, r2.w, r5.x
						 364 : mul r5.x, r2.w, l (289.000000)
						 365 : ge r5.x, r5.x, -r5.x
						 366 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
						 367 : mul r2.w, r2.w, r5.y
						 368 : frc r2.w, r2.w
						 369 : mul r2.w, r2.w, r5.x
						 370 : mul r2.w, r2.w, l (0.024390)
						 371 : frc r2.w, r2.w
						 372 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
						 373 : round_ni r2.w, r5.y
						 374 : add r6.x, -r2.w, r5.x
						 375 : add r6.y, | r5.x | , l (-0.500000)
						 376 : dp2 r2.w, r6.xyxx, r6.xyxx
						 377 : rsq r2.w, r2.w
						 378 : mul r5.xy, r2.wwww, r6.xyxx
						 379 : add r5.zw, r3.xxxy, l (0.000000, 0.000000, -1.000000, -1.000000)
						 380 : dp2 r2.w, r5.xyxx, r5.zwzz
						 381 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
						 382 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
						 383 : ge r6.xyzw, r6.xyzw, -r6.xyzw
						 384 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						 385 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						 386 : mul r5.zw, r5.zzzw, r7.zzzw
						 387 : mul r5.xy, r5.xyxx, r6.zwzz
						 388 : frc r5.xyzw, r5.xyzw
						 389 : mul r5.xy, r5.xyxx, r6.xyxx
						 390 : mul r5.zw, r5.zzzw, r7.xxxy
						 391 : mad r6.x, r5.z, l (34.000000), l (1.000000)
						 392 : mul r5.z, r5.z, r6.x
						 393 : mul r6.x, r5.z, l (289.000000)
						 394 : ge r6.x, r6.x, -r6.x
						 395 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
						 396 : mul r5.z, r5.z, r6.y
						 397 : frc r5.z, r5.z
						 398 : mad r5.z, r6.x, r5.z, r5.w
						 399 : mad r5.w, r5.z, l (34.000000), l (1.000000)
						 400 : mul r5.z, r5.z, r5.w
						 401 : mul r5.w, r5.z, l (289.000000)
						 402 : ge r5.w, r5.w, -r5.w
						 403 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
						 404 : mul r5.z, r5.z, r6.y
						 405 : frc r5.z, r5.z
						 406 : mul r5.z, r5.z, r6.x
						 407 : mul r5.z, r5.z, l (0.024390)
						 408 : frc r5.z, r5.z
						 409 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
						 410 : round_ni r5.w, r5.w
						 411 : add r6.x, -r5.w, r5.z
						 412 : add r6.y, | r5.z | , l (-0.500000)
						 413 : dp2 r5.z, r6.xyxx, r6.xyxx
						 414 : rsq r5.z, r5.z
						 415 : mul r5.zw, r5.zzzz, r6.xxxy
						 416 : add r6.xyzw, r3.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
						 417 : dp2 r5.z, r5.zwzz, r6.zwzz
						 418 : add r2.w, r2.w, -r5.z
						 419 : mul r6.zw, r3.xxxy, r3.xxxy
						 420 : mul r6.zw, r3.xxxy, r6.zzzw
						 421 : mad r7.xy, r3.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
						 422 : mad r7.xy, r3.xyxx, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
						 423 : mul r6.zw, r6.zzzw, r7.xxxy
						 424 : mad r2.w, r6.w, r2.w, r5.z
						 425 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
						 426 : ge r7.xyzw, r7.xyzw, -r7.zwzw
						 427 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
						 428 : mul r3.zw, r3.zzzw, r7.zzzw
						 429 : frc r3.zw, r3.zzzw
						 430 : mul r3.zw, r3.zzzw, r7.xxxy
						 431 : mad r5.z, r3.z, l (34.000000), l (1.000000)
						 432 : mul r3.z, r3.z, r5.z
						 433 : mul r5.z, r3.z, l (289.000000)
						 434 : ge r5.z, r5.z, -r5.z
						 435 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 436 : mul r3.z, r3.z, r5.w
						 437 : frc r3.z, r3.z
						 438 : mad r3.z, r5.z, r3.z, r3.w
						 439 : mad r3.w, r3.z, l (34.000000), l (1.000000)
						 440 : mul r3.z, r3.z, r3.w
						 441 : mul r3.w, r3.z, l (289.000000)
						 442 : ge r3.w, r3.w, -r3.w
						 443 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 444 : mul r3.z, r3.z, r5.w
						 445 : frc r3.z, r3.z
						 446 : mul r3.z, r3.z, r5.z
						 447 : mul r3.z, r3.z, l (0.024390)
						 448 : frc r3.z, r3.z
						 449 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
						 450 : round_ni r3.w, r3.w
						 451 : add r7.x, -r3.w, r3.z
						 452 : add r7.y, | r3.z | , l (-0.500000)
						 453 : dp2 r3.z, r7.xyxx, r7.xyxx
						 454 : rsq r3.z, r3.z
						 455 : mul r3.zw, r3.zzzz, r7.xxxy
						 456 : dp2 r3.x, r3.zwzz, r3.xyxx
						 457 : mad r3.y, r5.x, l (34.000000), l (1.000000)
						 458 : mul r3.y, r5.x, r3.y
						 459 : mul r3.z, r3.y, l (289.000000)
						 460 : ge r3.z, r3.z, -r3.z
						 461 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 462 : mul r3.y, r3.w, r3.y
						 463 : frc r3.y, r3.y
						 464 : mad r3.y, r3.z, r3.y, r5.y
						 465 : mad r3.z, r3.y, l (34.000000), l (1.000000)
						 466 : mul r3.y, r3.y, r3.z
						 467 : mul r3.z, r3.y, l (289.000000)
						 468 : ge r3.z, r3.z, -r3.z
						 469 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
						 470 : mul r3.y, r3.w, r3.y
						 471 : frc r3.y, r3.y
						 472 : mul r3.y, r3.y, r3.z
						 473 : mul r3.y, r3.y, l (0.024390)
						 474 : frc r3.y, r3.y
						 475 : mad r3.yz, r3.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
						 476 : round_ni r3.z, r3.z
						 477 : add r5.x, -r3.z, r3.y
						 478 : add r5.y, | r3.y | , l (-0.500000)
						 479 : dp2 r3.y, r5.xyxx, r5.xyxx
						 480 : rsq r3.y, r3.y
						 481 : mul r3.yz, r3.yyyy, r5.xxyx
						 482 : dp2 r3.y, r3.yzyy, r6.xyxx
						 483 : add r3.y, -r3.x, r3.y
						 484 : mad r3.x, r6.w, r3.y, r3.x
						 485 : add r2.w, r2.w, -r3.x
						 486 : mad r2.w, r6.z, r2.w, r3.x
						 487 : add r2.w, r2.w, l (0.500000)
						 488 : mul r2.w, r2.w, cb2[6].y
						 489 : mad r2.y, r2.z, r2.y, r2.w
						 490 : add r2.z, cb2[6].y, l (1.000000)
						 491 : div r2.y, r2.y, r2.z
						 492 : mul r2.yzw, r2.yyyy, v1.xxyz
						 493 : mad r2.yzw, r2.yyzw, cb2[1].zzzz, v0.xxyz
						 494 : dp3 r3.x, v1.xyzx, cb0[4].xyzx
						 495 : dp3 r3.y, v1.xyzx, cb0[5].xyzx
						 496 : dp3 r3.z, v1.xyzx, cb0[6].xyzx
						 497 : dp3 r3.w, r3.xyzx, r3.xyzx
						 498 : max r3.w, r3.w, l (0.000000)
						 499 : rsq r3.w, r3.w
						 500 : mul r3.xyz, r3.wwww, r3.xyzx
						 501 : mul r3.w, r2.x, r2.x
						 502 : mul r2.x, r2.x, r3.w
						 503 : mad r2.xyz, r3.xyzx, r2.xxxx, r2.yzwy
						 504 : mov r2.w, l (1.000000)
						 505 : dp4 r3.y, r4.xyzw, r2.xyzw
						 506 : mul r4.xyzw, r3.yyyy, cb1[17].xyzw
						 507 : dp4 r3.x, r0.xyzw, r2.xyzw
						 508 : dp4 r3.z, r1.xyzw, r2.xyzw
						 509 : mad r0.xyzw, cb1[16].xyzw, r3.xxxx, r4.xyzw
						 510 : mov o1.xyz, r3.xyzx
						 511 : mad r0.xyzw, cb1[18].xyzw, r3.zzzz, r0.xyzw
						 512 : add o0.xyzw, r0.xyzw, cb1[19].xyzw
						 513 : ret
								  // Approximately 0 instruction slots used


								  -- Hardware tier variant : Tier 1
								  --Fragment shader for "d3d11" :
								  Shader Disassembly :
							  //
							  // Generated by Microsoft (R) D3D Shader Disassembler
							  //
							  //
							  // Input signature:
							  //
							  // Name                 Index   Mask Register SysValue  Format   Used
							  // -------------------- ----- ------ -------- -------- ------- ------
							  // SV_POSITION              0   xyzw        0      POS   float       
							  // TEXCOORD                 0   xyz         1     NONE   float       
							  //
							  //
							  // Output signature:
							  //
							  // Name                 Index   Mask Register SysValue  Format   Used
							  // -------------------- ----- ------ -------- -------- ------- ------
							  // no Output
									ps_5_0
									dcl_globalFlags refactoringAllowed
								 0: ret
										// Approximately 0 instruction slots used


										//////////////////////////////////////////////////////
										Global Keywords : WRITE_MSAA_DEPTH
										Local Keywords : <none>
										--Hardware tier variant : Tier 1
										--Vertex shader for "d3d11" :
										// Stats: 459 math, 9 temp registers
										Uses vertex data channel "Vertex"
										Uses vertex data channel "Normal"

										Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
										  Matrix4x4 unity_ObjectToWorld at 0
										  Matrix4x4 unity_WorldToObject at 64
										}
										Constant Buffer "UnityGlobal" (7216 bytes) on slot 1 {
										  Matrix4x4 _ViewProjMatrix at 256
										  Vector3 _WorldSpaceCameraPos at 640
										  Vector4 _TimeParameters at 1072
										}
										Constant Buffer "UnityPerMaterial" (304 bytes) on slot 2 {
										  Vector4 Vector4_59D9B7DE at 0
										  Float Vector1_C24F477F at 16
										  Float Vector1_3F53ED5D at 20
										  Float Vector1_34A2131D at 24
										  Vector4 Vector4_BD02EA1F at 32
										  Float Vector1_B73C588D at 80
										  Float Vector1_157C4927 at 84
										  Float Vector1_31818DD2 at 88
										  Float Vector1_2E449449 at 92
										  Float Vector1_1100DBB4 at 96
										  Float Vector1_745E6F83 at 100
										  Float Vector1_835232BE at 108
										}

										Shader Disassembly :
										//
										// Generated by Microsoft (R) D3D Shader Disassembler
										//
										//
										// Input signature:
										//
										// Name                 Index   Mask Register SysValue  Format   Used
										// -------------------- ----- ------ -------- -------- ------- ------
										// POSITION                 0   xyz         0     NONE   float   xyz 
										// NORMAL                   0   xyz         1     NONE   float   xyz 
										// TANGENT                  0   xyzw        2     NONE   float       
										//
										//
										// Output signature:
										//
										// Name                 Index   Mask Register SysValue  Format   Used
										// -------------------- ----- ------ -------- -------- ------- ------
										// SV_POSITION              0   xyzw        0      POS   float   xyzw
										// TEXCOORD                 0   xyz         1     NONE   float   xyz 
										//
											  vs_5_0
											  dcl_globalFlags refactoringAllowed
											  dcl_constantbuffer CB0[7], immediateIndexed
											  dcl_constantbuffer CB1[68], immediateIndexed
											  dcl_constantbuffer CB2[7], immediateIndexed
											  dcl_input v0.xyz
											  dcl_input v1.xyz
											  dcl_output_siv o0.xyzw, position
											  dcl_output o1.xyz
											  dcl_temps 9
										   0: mov r0.x, cb0[0].x
										   1 : mov r0.y, cb0[1].x
										   2 : mov r0.z, cb0[2].x
										   3 : add r1.xyw, cb0[3].xyxz, -cb1[40].xyxz
										   4 : mov r0.w, r1.x
										   5 : mov r2.xyz, v0.xyzx
										   6 : mov r2.w, l (1.000000)
										   7 : dp4 r3.x, r0.xyzw, r2.xyzw
										   8 : mov r4.w, r1.y
										   9 : mov r4.x, cb0[0].y
										  10 : mov r4.y, cb0[1].y
										  11 : mov r4.z, cb0[2].y
										  12 : dp4 r3.y, r4.xyzw, r2.xyzw
										  13 : mov r1.x, cb0[0].z
										  14 : mov r1.y, cb0[1].z
										  15 : mov r1.z, cb0[2].z
										  16 : dp4 r3.z, r1.xyzw, r2.xyzw
										  17 : add r2.xyz, r3.xyzx, cb1[40].xyzx
										  18 : mul r2.w, cb2[0].w, l (0.017453)
										  19 : sincos r3.x, r5.x, r2.w
										  20 : add r2.w, -r5.x, l (1.000000)
										  21 : dp3 r3.y, cb2[0].xyzx, cb2[0].xyzx
										  22 : rsq r3.y, r3.y
										  23 : mul r3.yzw, r3.yyyy, cb2[0].zzyx
										  24 : mul r6.xyzw, r2.wwww, r3.wwyz
										  25 : mul r5.yzw, r3.xxxx, r3.yyzw
										  26 : mad r7.xy, r6.xwxx, r3.wzww, r5.xxxx
										  27 : mad r7.z, r6.y, r3.z, -r5.y
										  28 : mad r8.xy, r6.zyzz, r3.wzww, r5.zyzz
										  29 : mad r8.z, r6.w, r3.y, -r5.w
										  30 : mov r7.w, r8.x
										  31 : dp3 r3.x, r7.xzwx, r2.xyzx
										  32 : mov r8.w, r7.y
										  33 : dp3 r3.y, r8.ywzy, r2.xyzx
										  34 : add r2.xyz, -r2.xyzx, cb0[3].xyzx
										  35 : dp3 r2.x, r2.xyzx, r2.xyzx
										  36 : sqrt r2.x, r2.x
										  37 : div r2.x, r2.x, cb2[6].w
										  38 : mad r2.yz, cb1[67].xxxx, cb2[1].yyyy, r3.xxyx
										  39 : mul r2.yz, r2.yyzy, cb2[1].xxxx
										  40 : round_ni r3.zw, r2.yyyz
										  41 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
										  42 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
										  43 : ge r6.xyzw, r6.xyzw, -r6.zwzw
										  44 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										  45 : mul r5.xy, r5.xyxx, r6.zwzz
										  46 : frc r5.xy, r5.xyxx
										  47 : mul r5.xy, r5.xyxx, r6.xyxx
										  48 : mad r2.w, r5.x, l (34.000000), l (1.000000)
										  49 : mul r2.w, r5.x, r2.w
										  50 : mul r5.x, r2.w, l (289.000000)
										  51 : ge r5.x, r5.x, -r5.x
										  52 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
										  53 : mul r2.w, r2.w, r5.z
										  54 : frc r2.yzw, r2.yyzw
										  55 : mad r2.w, r5.x, r2.w, r5.y
										  56 : mad r5.x, r2.w, l (34.000000), l (1.000000)
										  57 : mul r2.w, r2.w, r5.x
										  58 : mul r5.x, r2.w, l (289.000000)
										  59 : ge r5.x, r5.x, -r5.x
										  60 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
										  61 : mul r2.w, r2.w, r5.y
										  62 : frc r2.w, r2.w
										  63 : mul r2.w, r2.w, r5.x
										  64 : mul r2.w, r2.w, l (0.024390)
										  65 : frc r2.w, r2.w
										  66 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
										  67 : round_ni r2.w, r5.y
										  68 : add r6.x, -r2.w, r5.x
										  69 : add r6.y, | r5.x | , l (-0.500000)
										  70 : dp2 r2.w, r6.xyxx, r6.xyxx
										  71 : rsq r2.w, r2.w
										  72 : mul r5.xy, r2.wwww, r6.xyxx
										  73 : add r5.zw, r2.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
										  74 : dp2 r2.w, r5.xyxx, r5.zwzz
										  75 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
										  76 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
										  77 : ge r6.xyzw, r6.xyzw, -r6.xyzw
										  78 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										  79 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										  80 : mul r5.zw, r5.zzzw, r7.zzzw
										  81 : mul r5.xy, r5.xyxx, r6.zwzz
										  82 : frc r5.xyzw, r5.xyzw
										  83 : mul r5.xy, r5.xyxx, r6.xyxx
										  84 : mul r5.zw, r5.zzzw, r7.xxxy
										  85 : mad r6.x, r5.z, l (34.000000), l (1.000000)
										  86 : mul r5.z, r5.z, r6.x
										  87 : mul r6.x, r5.z, l (289.000000)
										  88 : ge r6.x, r6.x, -r6.x
										  89 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
										  90 : mul r5.z, r5.z, r6.y
										  91 : frc r5.z, r5.z
										  92 : mad r5.z, r6.x, r5.z, r5.w
										  93 : mad r5.w, r5.z, l (34.000000), l (1.000000)
										  94 : mul r5.z, r5.z, r5.w
										  95 : mul r5.w, r5.z, l (289.000000)
										  96 : ge r5.w, r5.w, -r5.w
										  97 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
										  98 : mul r5.z, r5.z, r6.y
										  99 : frc r5.z, r5.z
										 100 : mul r5.z, r5.z, r6.x
										 101 : mul r5.z, r5.z, l (0.024390)
										 102 : frc r5.z, r5.z
										 103 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
										 104 : round_ni r5.w, r5.w
										 105 : add r6.x, -r5.w, r5.z
										 106 : add r6.y, | r5.z | , l (-0.500000)
										 107 : dp2 r5.z, r6.xyxx, r6.xyxx
										 108 : rsq r5.z, r5.z
										 109 : mul r5.zw, r5.zzzz, r6.xxxy
										 110 : add r6.xyzw, r2.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
										 111 : dp2 r5.z, r5.zwzz, r6.zwzz
										 112 : add r2.w, r2.w, -r5.z
										 113 : mul r6.zw, r2.yyyz, r2.yyyz
										 114 : mul r6.zw, r2.yyyz, r6.zzzw
										 115 : mad r7.xy, r2.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
										 116 : mad r7.xy, r2.yzyy, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
										 117 : mul r6.zw, r6.zzzw, r7.xxxy
										 118 : mad r2.w, r6.w, r2.w, r5.z
										 119 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
										 120 : ge r7.xyzw, r7.xyzw, -r7.zwzw
										 121 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										 122 : mul r3.zw, r3.zzzw, r7.zzzw
										 123 : frc r3.zw, r3.zzzw
										 124 : mul r3.zw, r3.zzzw, r7.xxxy
										 125 : mad r5.z, r3.z, l (34.000000), l (1.000000)
										 126 : mul r3.z, r3.z, r5.z
										 127 : mul r5.z, r3.z, l (289.000000)
										 128 : ge r5.z, r5.z, -r5.z
										 129 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 130 : mul r3.z, r3.z, r5.w
										 131 : frc r3.z, r3.z
										 132 : mad r3.z, r5.z, r3.z, r3.w
										 133 : mad r3.w, r3.z, l (34.000000), l (1.000000)
										 134 : mul r3.z, r3.z, r3.w
										 135 : mul r3.w, r3.z, l (289.000000)
										 136 : ge r3.w, r3.w, -r3.w
										 137 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 138 : mul r3.z, r3.z, r5.w
										 139 : frc r3.z, r3.z
										 140 : mul r3.z, r3.z, r5.z
										 141 : mul r3.z, r3.z, l (0.024390)
										 142 : frc r3.z, r3.z
										 143 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
										 144 : round_ni r3.w, r3.w
										 145 : add r7.x, -r3.w, r3.z
										 146 : add r7.y, | r3.z | , l (-0.500000)
										 147 : dp2 r3.z, r7.xyxx, r7.xyxx
										 148 : rsq r3.z, r3.z
										 149 : mul r3.zw, r3.zzzz, r7.xxxy
										 150 : dp2 r2.y, r3.zwzz, r2.yzyy
										 151 : mad r2.z, r5.x, l (34.000000), l (1.000000)
										 152 : mul r2.z, r5.x, r2.z
										 153 : mul r3.z, r2.z, l (289.000000)
										 154 : ge r3.z, r3.z, -r3.z
										 155 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 156 : mul r2.z, r2.z, r3.w
										 157 : frc r2.z, r2.z
										 158 : mad r2.z, r3.z, r2.z, r5.y
										 159 : mad r3.z, r2.z, l (34.000000), l (1.000000)
										 160 : mul r2.z, r2.z, r3.z
										 161 : mul r3.z, r2.z, l (289.000000)
										 162 : ge r3.z, r3.z, -r3.z
										 163 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 164 : mul r2.z, r2.z, r3.w
										 165 : frc r2.z, r2.z
										 166 : mul r2.z, r2.z, r3.z
										 167 : mul r2.z, r2.z, l (0.024390)
										 168 : frc r2.z, r2.z
										 169 : mad r3.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
										 170 : round_ni r2.z, r3.w
										 171 : add r5.x, -r2.z, r3.z
										 172 : add r5.y, | r3.z | , l (-0.500000)
										 173 : dp2 r2.z, r5.xyxx, r5.xyxx
										 174 : rsq r2.z, r2.z
										 175 : mul r3.zw, r2.zzzz, r5.xxxy
										 176 : dp2 r2.z, r3.zwzz, r6.xyxx
										 177 : add r2.z, -r2.y, r2.z
										 178 : mad r2.y, r6.w, r2.z, r2.y
										 179 : add r2.z, -r2.y, r2.w
										 180 : mad r2.y, r6.z, r2.z, r2.y
										 181 : add r2.y, r2.y, l (0.500000)
										 182 : mul r2.zw, r3.xxxy, cb2[1].xxxx
										 183 : mad r3.xy, cb1[67].xxxx, cb2[6].xxxx, r3.xyxx
										 184 : mul r3.xy, r3.xyxx, cb2[5].wwww
										 185 : round_ni r3.zw, r2.zzzw
										 186 : frc r2.zw, r2.zzzw
										 187 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
										 188 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
										 189 : ge r6.xyzw, r6.xyzw, -r6.zwzw
										 190 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										 191 : mul r5.xy, r5.xyxx, r6.zwzz
										 192 : frc r5.xy, r5.xyxx
										 193 : mul r5.xy, r5.xyxx, r6.xyxx
										 194 : mad r5.z, r5.x, l (34.000000), l (1.000000)
										 195 : mul r5.x, r5.x, r5.z
										 196 : mul r5.z, r5.x, l (289.000000)
										 197 : ge r5.z, r5.z, -r5.z
										 198 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 199 : mul r5.x, r5.w, r5.x
										 200 : frc r5.x, r5.x
										 201 : mad r5.x, r5.z, r5.x, r5.y
										 202 : mad r5.y, r5.x, l (34.000000), l (1.000000)
										 203 : mul r5.x, r5.x, r5.y
										 204 : mul r5.y, r5.x, l (289.000000)
										 205 : ge r5.y, r5.y, -r5.y
										 206 : movc r5.yz, r5.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
										 207 : mul r5.x, r5.z, r5.x
										 208 : frc r5.x, r5.x
										 209 : mul r5.x, r5.x, r5.y
										 210 : mul r5.x, r5.x, l (0.024390)
										 211 : frc r5.x, r5.x
										 212 : mad r5.xy, r5.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
										 213 : round_ni r5.y, r5.y
										 214 : add r6.x, -r5.y, r5.x
										 215 : add r6.y, | r5.x | , l (-0.500000)
										 216 : dp2 r5.x, r6.xyxx, r6.xyxx
										 217 : rsq r5.x, r5.x
										 218 : mul r5.xy, r5.xxxx, r6.xyxx
										 219 : add r5.zw, r2.zzzw, l (0.000000, 0.000000, -1.000000, -1.000000)
										 220 : dp2 r5.x, r5.xyxx, r5.zwzz
										 221 : add r6.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
										 222 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
										 223 : ge r7.xyzw, r7.xyzw, -r7.xyzw
										 224 : movc r8.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										 225 : movc r7.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										 226 : mul r5.yz, r6.zzwz, r8.zzwz
										 227 : mul r6.xy, r6.xyxx, r7.zwzz
										 228 : frc r6.xy, r6.xyxx
										 229 : mul r6.xy, r6.xyxx, r7.xyxx
										 230 : frc r5.yz, r5.yyzy
										 231 : mul r5.yz, r5.yyzy, r8.xxyx
										 232 : mad r5.w, r5.y, l (34.000000), l (1.000000)
										 233 : mul r5.y, r5.y, r5.w
										 234 : mul r5.w, r5.y, l (289.000000)
										 235 : ge r5.w, r5.w, -r5.w
										 236 : movc r6.zw, r5.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 237 : mul r5.y, r5.y, r6.w
										 238 : frc r5.y, r5.y
										 239 : mad r5.y, r6.z, r5.y, r5.z
										 240 : mad r5.z, r5.y, l (34.000000), l (1.000000)
										 241 : mul r5.y, r5.y, r5.z
										 242 : mul r5.z, r5.y, l (289.000000)
										 243 : ge r5.z, r5.z, -r5.z
										 244 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 245 : mul r5.y, r5.w, r5.y
										 246 : frc r5.y, r5.y
										 247 : mul r5.y, r5.y, r5.z
										 248 : mul r5.y, r5.y, l (0.024390)
										 249 : frc r5.y, r5.y
										 250 : mad r5.yz, r5.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
										 251 : round_ni r5.z, r5.z
										 252 : add r7.x, -r5.z, r5.y
										 253 : add r7.y, | r5.y | , l (-0.500000)
										 254 : dp2 r5.y, r7.xyxx, r7.xyxx
										 255 : rsq r5.y, r5.y
										 256 : mul r5.yz, r5.yyyy, r7.xxyx
										 257 : add r7.xyzw, r2.zwzw, l (-0.000000, -1.000000, -1.000000, -0.000000)
										 258 : dp2 r5.y, r5.yzyy, r7.zwzz
										 259 : add r5.x, -r5.y, r5.x
										 260 : mul r5.zw, r2.zzzw, r2.zzzw
										 261 : mul r5.zw, r2.zzzw, r5.zzzw
										 262 : mad r6.zw, r2.zzzw, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
										 263 : mad r6.zw, r2.zzzw, r6.zzzw, l (0.000000, 0.000000, 10.000000, 10.000000)
										 264 : mul r5.zw, r5.zzzw, r6.zzzw
										 265 : mad r5.x, r5.w, r5.x, r5.y
										 266 : mul r8.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
										 267 : ge r8.xyzw, r8.xyzw, -r8.zwzw
										 268 : movc r8.xyzw, r8.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										 269 : mul r3.zw, r3.zzzw, r8.zzzw
										 270 : frc r3.zw, r3.zzzw
										 271 : mul r3.zw, r3.zzzw, r8.xxxy
										 272 : mad r5.y, r3.z, l (34.000000), l (1.000000)
										 273 : mul r3.z, r3.z, r5.y
										 274 : mul r5.y, r3.z, l (289.000000)
										 275 : ge r5.y, r5.y, -r5.y
										 276 : movc r6.zw, r5.yyyy, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 277 : mul r3.z, r3.z, r6.w
										 278 : frc r3.z, r3.z
										 279 : mad r3.z, r6.z, r3.z, r3.w
										 280 : mad r3.w, r3.z, l (34.000000), l (1.000000)
										 281 : mul r3.z, r3.z, r3.w
										 282 : mul r3.w, r3.z, l (289.000000)
										 283 : ge r3.w, r3.w, -r3.w
										 284 : movc r6.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 285 : mul r3.z, r3.z, r6.w
										 286 : frc r3.z, r3.z
										 287 : mul r3.z, r3.z, r6.z
										 288 : mul r3.z, r3.z, l (0.024390)
										 289 : frc r3.z, r3.z
										 290 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
										 291 : round_ni r3.w, r3.w
										 292 : add r8.x, -r3.w, r3.z
										 293 : add r8.y, | r3.z | , l (-0.500000)
										 294 : dp2 r3.z, r8.xyxx, r8.xyxx
										 295 : rsq r3.z, r3.z
										 296 : mul r3.zw, r3.zzzz, r8.xxxy
										 297 : dp2 r2.z, r3.zwzz, r2.zwzz
										 298 : mad r2.w, r6.x, l (34.000000), l (1.000000)
										 299 : mul r2.w, r6.x, r2.w
										 300 : mul r3.z, r2.w, l (289.000000)
										 301 : ge r3.z, r3.z, -r3.z
										 302 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 303 : mul r2.w, r2.w, r3.w
										 304 : frc r2.w, r2.w
										 305 : mad r2.w, r3.z, r2.w, r6.y
										 306 : mad r3.z, r2.w, l (34.000000), l (1.000000)
										 307 : mul r2.w, r2.w, r3.z
										 308 : mul r3.z, r2.w, l (289.000000)
										 309 : ge r3.z, r3.z, -r3.z
										 310 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 311 : mul r2.w, r2.w, r3.w
										 312 : frc r2.w, r2.w
										 313 : mul r2.w, r2.w, r3.z
										 314 : mul r2.w, r2.w, l (0.024390)
										 315 : frc r2.w, r2.w
										 316 : mad r3.zw, r2.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
										 317 : round_ni r2.w, r3.w
										 318 : add r6.x, -r2.w, r3.z
										 319 : add r6.y, | r3.z | , l (-0.500000)
										 320 : dp2 r2.w, r6.xyxx, r6.xyxx
										 321 : rsq r2.w, r2.w
										 322 : mul r3.zw, r2.wwww, r6.xxxy
										 323 : dp2 r2.w, r3.zwzz, r7.xyxx
										 324 : add r2.w, -r2.z, r2.w
										 325 : mad r2.z, r5.w, r2.w, r2.z
										 326 : add r2.w, -r2.z, r5.x
										 327 : mad r2.z, r5.z, r2.w, r2.z
										 328 : add r2.y, r2.y, r2.z
										 329 : add r2.y, r2.y, l (0.500000)
										 330 : mul_sat r2.y, r2.y, l (0.500000)
										 331 : log r2.y, r2.y
										 332 : mul r2.y, r2.y, cb2[5].z
										 333 : exp r2.y, r2.y
										 334 : add r2.y, r2.y, -cb2[2].x
										 335 : add r2.zw, -cb2[2].zzzx, cb2[2].wwwy
										 336 : mul r2.y, r2.z, r2.y
										 337 : div r2.y, r2.y, r2.w
										 338 : add r2.y, r2.y, cb2[2].z
										 339 : add r2.y, | r2.y | , -cb2[5].x
										 340 : add r2.z, -cb2[5].x, cb2[5].y
										 341 : div r2.z, l (1.000000, 1.000000, 1.000000, 1.000000), r2.z
										 342 : mul_sat r2.y, r2.z, r2.y
										 343 : mad r2.z, r2.y, l (-2.000000), l (3.000000)
										 344 : mul r2.y, r2.y, r2.y
										 345 : round_ni r3.zw, r3.xxxy
										 346 : frc r3.xy, r3.xyxx
										 347 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
										 348 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
										 349 : ge r6.xyzw, r6.xyzw, -r6.zwzw
										 350 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										 351 : mul r5.xy, r5.xyxx, r6.zwzz
										 352 : frc r5.xy, r5.xyxx
										 353 : mul r5.xy, r5.xyxx, r6.xyxx
										 354 : mad r2.w, r5.x, l (34.000000), l (1.000000)
										 355 : mul r2.w, r5.x, r2.w
										 356 : mul r5.x, r2.w, l (289.000000)
										 357 : ge r5.x, r5.x, -r5.x
										 358 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
										 359 : mul r2.w, r2.w, r5.z
										 360 : frc r2.w, r2.w
										 361 : mad r2.w, r5.x, r2.w, r5.y
										 362 : mad r5.x, r2.w, l (34.000000), l (1.000000)
										 363 : mul r2.w, r2.w, r5.x
										 364 : mul r5.x, r2.w, l (289.000000)
										 365 : ge r5.x, r5.x, -r5.x
										 366 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
										 367 : mul r2.w, r2.w, r5.y
										 368 : frc r2.w, r2.w
										 369 : mul r2.w, r2.w, r5.x
										 370 : mul r2.w, r2.w, l (0.024390)
										 371 : frc r2.w, r2.w
										 372 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
										 373 : round_ni r2.w, r5.y
										 374 : add r6.x, -r2.w, r5.x
										 375 : add r6.y, | r5.x | , l (-0.500000)
										 376 : dp2 r2.w, r6.xyxx, r6.xyxx
										 377 : rsq r2.w, r2.w
										 378 : mul r5.xy, r2.wwww, r6.xyxx
										 379 : add r5.zw, r3.xxxy, l (0.000000, 0.000000, -1.000000, -1.000000)
										 380 : dp2 r2.w, r5.xyxx, r5.zwzz
										 381 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
										 382 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
										 383 : ge r6.xyzw, r6.xyzw, -r6.xyzw
										 384 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										 385 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										 386 : mul r5.zw, r5.zzzw, r7.zzzw
										 387 : mul r5.xy, r5.xyxx, r6.zwzz
										 388 : frc r5.xyzw, r5.xyzw
										 389 : mul r5.xy, r5.xyxx, r6.xyxx
										 390 : mul r5.zw, r5.zzzw, r7.xxxy
										 391 : mad r6.x, r5.z, l (34.000000), l (1.000000)
										 392 : mul r5.z, r5.z, r6.x
										 393 : mul r6.x, r5.z, l (289.000000)
										 394 : ge r6.x, r6.x, -r6.x
										 395 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
										 396 : mul r5.z, r5.z, r6.y
										 397 : frc r5.z, r5.z
										 398 : mad r5.z, r6.x, r5.z, r5.w
										 399 : mad r5.w, r5.z, l (34.000000), l (1.000000)
										 400 : mul r5.z, r5.z, r5.w
										 401 : mul r5.w, r5.z, l (289.000000)
										 402 : ge r5.w, r5.w, -r5.w
										 403 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
										 404 : mul r5.z, r5.z, r6.y
										 405 : frc r5.z, r5.z
										 406 : mul r5.z, r5.z, r6.x
										 407 : mul r5.z, r5.z, l (0.024390)
										 408 : frc r5.z, r5.z
										 409 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
										 410 : round_ni r5.w, r5.w
										 411 : add r6.x, -r5.w, r5.z
										 412 : add r6.y, | r5.z | , l (-0.500000)
										 413 : dp2 r5.z, r6.xyxx, r6.xyxx
										 414 : rsq r5.z, r5.z
										 415 : mul r5.zw, r5.zzzz, r6.xxxy
										 416 : add r6.xyzw, r3.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
										 417 : dp2 r5.z, r5.zwzz, r6.zwzz
										 418 : add r2.w, r2.w, -r5.z
										 419 : mul r6.zw, r3.xxxy, r3.xxxy
										 420 : mul r6.zw, r3.xxxy, r6.zzzw
										 421 : mad r7.xy, r3.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
										 422 : mad r7.xy, r3.xyxx, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
										 423 : mul r6.zw, r6.zzzw, r7.xxxy
										 424 : mad r2.w, r6.w, r2.w, r5.z
										 425 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
										 426 : ge r7.xyzw, r7.xyzw, -r7.zwzw
										 427 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
										 428 : mul r3.zw, r3.zzzw, r7.zzzw
										 429 : frc r3.zw, r3.zzzw
										 430 : mul r3.zw, r3.zzzw, r7.xxxy
										 431 : mad r5.z, r3.z, l (34.000000), l (1.000000)
										 432 : mul r3.z, r3.z, r5.z
										 433 : mul r5.z, r3.z, l (289.000000)
										 434 : ge r5.z, r5.z, -r5.z
										 435 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 436 : mul r3.z, r3.z, r5.w
										 437 : frc r3.z, r3.z
										 438 : mad r3.z, r5.z, r3.z, r3.w
										 439 : mad r3.w, r3.z, l (34.000000), l (1.000000)
										 440 : mul r3.z, r3.z, r3.w
										 441 : mul r3.w, r3.z, l (289.000000)
										 442 : ge r3.w, r3.w, -r3.w
										 443 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 444 : mul r3.z, r3.z, r5.w
										 445 : frc r3.z, r3.z
										 446 : mul r3.z, r3.z, r5.z
										 447 : mul r3.z, r3.z, l (0.024390)
										 448 : frc r3.z, r3.z
										 449 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
										 450 : round_ni r3.w, r3.w
										 451 : add r7.x, -r3.w, r3.z
										 452 : add r7.y, | r3.z | , l (-0.500000)
										 453 : dp2 r3.z, r7.xyxx, r7.xyxx
										 454 : rsq r3.z, r3.z
										 455 : mul r3.zw, r3.zzzz, r7.xxxy
										 456 : dp2 r3.x, r3.zwzz, r3.xyxx
										 457 : mad r3.y, r5.x, l (34.000000), l (1.000000)
										 458 : mul r3.y, r5.x, r3.y
										 459 : mul r3.z, r3.y, l (289.000000)
										 460 : ge r3.z, r3.z, -r3.z
										 461 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 462 : mul r3.y, r3.w, r3.y
										 463 : frc r3.y, r3.y
										 464 : mad r3.y, r3.z, r3.y, r5.y
										 465 : mad r3.z, r3.y, l (34.000000), l (1.000000)
										 466 : mul r3.y, r3.y, r3.z
										 467 : mul r3.z, r3.y, l (289.000000)
										 468 : ge r3.z, r3.z, -r3.z
										 469 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
										 470 : mul r3.y, r3.w, r3.y
										 471 : frc r3.y, r3.y
										 472 : mul r3.y, r3.y, r3.z
										 473 : mul r3.y, r3.y, l (0.024390)
										 474 : frc r3.y, r3.y
										 475 : mad r3.yz, r3.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
										 476 : round_ni r3.z, r3.z
										 477 : add r5.x, -r3.z, r3.y
										 478 : add r5.y, | r3.y | , l (-0.500000)
										 479 : dp2 r3.y, r5.xyxx, r5.xyxx
										 480 : rsq r3.y, r3.y
										 481 : mul r3.yz, r3.yyyy, r5.xxyx
										 482 : dp2 r3.y, r3.yzyy, r6.xyxx
										 483 : add r3.y, -r3.x, r3.y
										 484 : mad r3.x, r6.w, r3.y, r3.x
										 485 : add r2.w, r2.w, -r3.x
										 486 : mad r2.w, r6.z, r2.w, r3.x
										 487 : add r2.w, r2.w, l (0.500000)
										 488 : mul r2.w, r2.w, cb2[6].y
										 489 : mad r2.y, r2.z, r2.y, r2.w
										 490 : add r2.z, cb2[6].y, l (1.000000)
										 491 : div r2.y, r2.y, r2.z
										 492 : mul r2.yzw, r2.yyyy, v1.xxyz
										 493 : mad r2.yzw, r2.yyzw, cb2[1].zzzz, v0.xxyz
										 494 : dp3 r3.x, v1.xyzx, cb0[4].xyzx
										 495 : dp3 r3.y, v1.xyzx, cb0[5].xyzx
										 496 : dp3 r3.z, v1.xyzx, cb0[6].xyzx
										 497 : dp3 r3.w, r3.xyzx, r3.xyzx
										 498 : max r3.w, r3.w, l (0.000000)
										 499 : rsq r3.w, r3.w
										 500 : mul r3.xyz, r3.wwww, r3.xyzx
										 501 : mul r3.w, r2.x, r2.x
										 502 : mul r2.x, r2.x, r3.w
										 503 : mad r2.xyz, r3.xyzx, r2.xxxx, r2.yzwy
										 504 : mov r2.w, l (1.000000)
										 505 : dp4 r3.y, r4.xyzw, r2.xyzw
										 506 : mul r4.xyzw, r3.yyyy, cb1[17].xyzw
										 507 : dp4 r3.x, r0.xyzw, r2.xyzw
										 508 : dp4 r3.z, r1.xyzw, r2.xyzw
										 509 : mad r0.xyzw, cb1[16].xyzw, r3.xxxx, r4.xyzw
										 510 : mov o1.xyz, r3.xyzx
										 511 : mad r0.xyzw, cb1[18].xyzw, r3.zzzz, r0.xyzw
										 512 : add o0.xyzw, r0.xyzw, cb1[19].xyzw
										 513 : ret
												  // Approximately 0 instruction slots used


												  -- Hardware tier variant : Tier 1
												  --Fragment shader for "d3d11" :
												  Shader Disassembly :
											  //
											  // Generated by Microsoft (R) D3D Shader Disassembler
											  //
											  //
											  // Input signature:
											  //
											  // Name                 Index   Mask Register SysValue  Format   Used
											  // -------------------- ----- ------ -------- -------- ------- ------
											  // SV_POSITION              0   xyzw        0      POS   float     z 
											  // TEXCOORD                 0   xyz         1     NONE   float       
											  //
											  //
											  // Output signature:
											  //
											  // Name                 Index   Mask Register SysValue  Format   Used
											  // -------------------- ----- ------ -------- -------- ------- ------
											  // SV_Target                0   xyzw        0   TARGET   float   xyzw
											  // SV_Target                1   x           1   TARGET   float   x   
											  //
													ps_5_0
													dcl_globalFlags refactoringAllowed
													dcl_input_ps_siv linear noperspective v0.z, position
													dcl_output o0.xyzw
													dcl_output o1.x
												 0: mov o0.xyzw, l (0,0,0,1.000000)
												 1 : mov o1.x, v0.z
												 2 : ret
														// Approximately 0 instruction slots used


														 }


						// Stats for Vertex shader:
						//        d3d11: 905 math, 2 branch
						// Stats for Fragment shader:
						//        d3d11: 5 math
						Pass {
						 Name "MotionVectors"
						 Tags { "LIGHTMODE" = "MOTIONVECTORS" "QUEUE" = "Transparent+0" "RenderType" = "HDUnlitShader" "RenderPipeline" = "HDRenderPipeline" }
						 Cull[_CullMode]
						 Stencil {
						  Ref[_StencilRefMV]
						  WriteMask[_StencilWriteMaskMV]
						  Pass Replace
						 }
						 ColorMask1 0
														//////////////////////////////////
														//                              //
														//      Compiled programs       //
														//                              //
														//////////////////////////////////
													  //////////////////////////////////////////////////////
													  Global Keywords : <none>
													  Local Keywords : <none>
													  --Hardware tier variant : Tier 1
													  --Vertex shader for "d3d11" :
														// Stats: 905 math, 12 temp registers, 2 branches
														Uses vertex data channel "Vertex"
														Uses vertex data channel "Normal"
														Uses vertex data channel "TexCoord4"

														Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
														  Matrix4x4 unity_ObjectToWorld at 0
														  Matrix4x4 unity_WorldToObject at 64
														  Matrix4x4 unity_MatrixPreviousM at 448
														  Vector4 unity_MotionVectorsParams at 576
														}
														Constant Buffer "UnityGlobal" (7216 bytes) on slot 1 {
														  Matrix4x4 _ViewProjMatrix at 256
														  Matrix4x4 _NonJitteredViewProjMatrix at 448
														  Matrix4x4 _PrevViewProjMatrix at 512
														  Vector3 _WorldSpaceCameraPos at 640
														  Vector4 _TimeParameters at 1072
														  Vector4 _LastTimeParameters at 1088
														}
														Constant Buffer "UnityPerMaterial" (304 bytes) on slot 2 {
														  Vector4 Vector4_59D9B7DE at 0
														  Float Vector1_C24F477F at 16
														  Float Vector1_3F53ED5D at 20
														  Float Vector1_34A2131D at 24
														  Vector4 Vector4_BD02EA1F at 32
														  Float Vector1_B73C588D at 80
														  Float Vector1_157C4927 at 84
														  Float Vector1_31818DD2 at 88
														  Float Vector1_2E449449 at 92
														  Float Vector1_1100DBB4 at 96
														  Float Vector1_745E6F83 at 100
														  Float Vector1_835232BE at 108
														}

														Shader Disassembly :
														//
														// Generated by Microsoft (R) D3D Shader Disassembler
														//
														//
														// Input signature:
														//
														// Name                 Index   Mask Register SysValue  Format   Used
														// -------------------- ----- ------ -------- -------- ------- ------
														// POSITION                 0   xyz         0     NONE   float   xyz 
														// NORMAL                   0   xyz         1     NONE   float   xyz 
														// TANGENT                  0   xyzw        2     NONE   float       
														// TEXCOORD                 4   xyz         3     NONE   float   xyz 
														//
														//
														// Output signature:
														//
														// Name                 Index   Mask Register SysValue  Format   Used
														// -------------------- ----- ------ -------- -------- ------- ------
														// TEXCOORD                 8   xyz         0     NONE   float   xyz 
														// TEXCOORD                 9   xyz         1     NONE   float   xyz 
														// SV_POSITION              0   xyzw        2      POS   float   xyzw
														// TEXCOORD                 0   xyz         3     NONE   float   xyz 
														//
															  vs_5_0
															  dcl_globalFlags refactoringAllowed
															  dcl_constantbuffer CB0[37], immediateIndexed
															  dcl_constantbuffer CB1[69], immediateIndexed
															  dcl_constantbuffer CB2[7], immediateIndexed
															  dcl_input v0.xyz
															  dcl_input v1.xyz
															  dcl_input v3.xyz
															  dcl_output o0.xyz
															  dcl_output o1.xyz
															  dcl_output_siv o2.xyzw, position
															  dcl_output o3.xyz
															  dcl_temps 12
														   0: dp3 r0.x, v1.xyzx, cb0[4].xyzx
														   1 : dp3 r0.y, v1.xyzx, cb0[5].xyzx
														   2 : dp3 r0.z, v1.xyzx, cb0[6].xyzx
														   3 : dp3 r0.w, r0.xyzx, r0.xyzx
														   4 : max r0.w, r0.w, l (0.000000)
														   5 : rsq r0.w, r0.w
														   6 : mul r0.xyz, r0.wwww, r0.xyzx
														   7 : add r1.xyw, cb0[3].xyxz, -cb1[40].xyxz
														   8 : mov r2.x, cb0[0].x
														   9 : mov r2.y, cb0[1].x
														  10 : mov r2.z, cb0[2].x
														  11 : mov r2.w, r1.x
														  12 : mov r3.xyz, v0.xyzx
														  13 : mov r3.w, l (1.000000)
														  14 : dp4 r4.x, r2.xyzw, r3.xyzw
														  15 : mov r5.x, cb0[0].y
														  16 : mov r5.y, cb0[1].y
														  17 : mov r5.z, cb0[2].y
														  18 : mov r5.w, r1.y
														  19 : dp4 r4.y, r5.xyzw, r3.xyzw
														  20 : mov r1.x, cb0[0].z
														  21 : mov r1.y, cb0[1].z
														  22 : mov r1.z, cb0[2].z
														  23 : dp4 r4.z, r1.xyzw, r3.xyzw
														  24 : add r3.xyz, r4.xyzx, cb1[40].xyzx
														  25 : add r4.xyz, -r3.xyzx, cb0[3].xyzx
														  26 : dp3 r0.w, r4.xyzx, r4.xyzx
														  27 : sqrt r0.w, r0.w
														  28 : div r0.w, r0.w, cb2[6].w
														  29 : mul r3.w, r0.w, r0.w
														  30 : mul r0.w, r0.w, r3.w
														  31 : mul r3.w, cb2[0].w, l (0.017453)
														  32 : sincos r4.x, r6.x, r3.w
														  33 : add r3.w, -r6.x, l (1.000000)
														  34 : dp3 r4.y, cb2[0].xyzx, cb2[0].xyzx
														  35 : rsq r4.y, r4.y
														  36 : mul r4.yzw, r4.yyyy, cb2[0].zzyx
														  37 : mul r7.xyzw, r3.wwww, r4.wwyz
														  38 : mul r6.yzw, r4.xxxx, r4.yyzw
														  39 : mad r8.z, r7.y, r4.z, -r6.y
														  40 : mad r9.xy, r7.zyzz, r4.wzww, r6.zyzz
														  41 : mad r8.xy, r7.xwxx, r4.wzww, r6.xxxx
														  42 : mad r9.z, r7.w, r4.y, -r6.w
														  43 : mov r8.w, r9.x
														  44 : dp3 r4.x, r8.xzwx, r3.xyzx
														  45 : mov r9.w, r8.y
														  46 : dp3 r4.y, r9.ywzy, r3.xyzx
														  47 : mad r3.xy, cb1[67].xxxx, cb2[1].yyyy, r4.xyxx
														  48 : mul r3.xy, r3.xyxx, cb2[1].xxxx
														  49 : round_ni r3.zw, r3.xxxy
														  50 : frc r3.xy, r3.xyxx
														  51 : mul r6.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														  52 : ge r6.xyzw, r6.xyzw, -r6.zwzw
														  53 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														  54 : mul r4.zw, r3.zzzw, r6.zzzw
														  55 : frc r4.zw, r4.zzzw
														  56 : mul r4.zw, r4.zzzw, r6.xxxy
														  57 : mad r6.x, r4.z, l (34.000000), l (1.000000)
														  58 : mul r4.z, r4.z, r6.x
														  59 : mul r6.x, r4.z, l (289.000000)
														  60 : ge r6.x, r6.x, -r6.x
														  61 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														  62 : mul r4.z, r4.z, r6.y
														  63 : frc r4.z, r4.z
														  64 : mad r4.z, r6.x, r4.z, r4.w
														  65 : mad r4.w, r4.z, l (34.000000), l (1.000000)
														  66 : mul r4.z, r4.z, r4.w
														  67 : mul r4.w, r4.z, l (289.000000)
														  68 : ge r4.w, r4.w, -r4.w
														  69 : movc r6.xy, r4.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														  70 : mul r4.z, r4.z, r6.y
														  71 : frc r4.z, r4.z
														  72 : mul r4.z, r4.z, r6.x
														  73 : mul r4.z, r4.z, l (0.024390)
														  74 : frc r4.z, r4.z
														  75 : mad r4.zw, r4.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
														  76 : round_ni r4.w, r4.w
														  77 : add r6.x, -r4.w, r4.z
														  78 : add r6.y, | r4.z | , l (-0.500000)
														  79 : dp2 r4.z, r6.xyxx, r6.xyxx
														  80 : rsq r4.z, r4.z
														  81 : mul r4.zw, r4.zzzz, r6.xxxy
														  82 : dp2 r4.z, r4.zwzz, r3.xyxx
														  83 : add r6.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
														  84 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														  85 : ge r7.xyzw, r7.xyzw, -r7.xyzw
														  86 : movc r10.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														  87 : mul r6.xy, r6.xyxx, r10.zwzz
														  88 : frc r6.xy, r6.xyxx
														  89 : mul r6.xy, r6.xyxx, r10.xyxx
														  90 : mad r4.w, r6.x, l (34.000000), l (1.000000)
														  91 : mul r4.w, r6.x, r4.w
														  92 : mul r6.x, r4.w, l (289.000000)
														  93 : ge r6.x, r6.x, -r6.x
														  94 : movc r7.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														  95 : mul r4.w, r4.w, r7.y
														  96 : frc r4.w, r4.w
														  97 : mad r4.w, r7.x, r4.w, r6.y
														  98 : mad r6.x, r4.w, l (34.000000), l (1.000000)
														  99 : mul r4.w, r4.w, r6.x
														 100 : mul r6.x, r4.w, l (289.000000)
														 101 : ge r6.x, r6.x, -r6.x
														 102 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 103 : mul r4.w, r4.w, r6.y
														 104 : frc r4.w, r4.w
														 105 : mul r4.w, r4.w, r6.x
														 106 : mul r4.w, r4.w, l (0.024390)
														 107 : frc r4.w, r4.w
														 108 : mad r6.xy, r4.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
														 109 : round_ni r4.w, r6.y
														 110 : add r7.x, -r4.w, r6.x
														 111 : add r7.y, | r6.x | , l (-0.500000)
														 112 : dp2 r4.w, r7.xyxx, r7.xyxx
														 113 : rsq r4.w, r4.w
														 114 : mul r6.xy, r4.wwww, r7.xyxx
														 115 : add r10.xyzw, r3.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
														 116 : dp2 r4.w, r6.xyxx, r10.xyxx
														 117 : movc r7.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 118 : mul r6.xy, r6.zwzz, r7.zwzz
														 119 : frc r6.xy, r6.xyxx
														 120 : mul r6.xy, r6.xyxx, r7.xyxx
														 121 : mad r6.z, r6.x, l (34.000000), l (1.000000)
														 122 : mul r6.x, r6.x, r6.z
														 123 : mul r6.z, r6.x, l (289.000000)
														 124 : ge r6.z, r6.z, -r6.z
														 125 : movc r6.zw, r6.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
														 126 : mul r6.x, r6.w, r6.x
														 127 : frc r6.x, r6.x
														 128 : mad r6.x, r6.z, r6.x, r6.y
														 129 : mad r6.y, r6.x, l (34.000000), l (1.000000)
														 130 : mul r6.x, r6.x, r6.y
														 131 : mul r6.y, r6.x, l (289.000000)
														 132 : ge r6.y, r6.y, -r6.y
														 133 : movc r6.yz, r6.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 134 : mul r6.x, r6.z, r6.x
														 135 : frc r6.x, r6.x
														 136 : mul r6.x, r6.x, r6.y
														 137 : mul r6.x, r6.x, l (0.024390)
														 138 : frc r6.x, r6.x
														 139 : mad r6.xy, r6.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
														 140 : round_ni r6.y, r6.y
														 141 : add r7.x, -r6.y, r6.x
														 142 : add r7.y, | r6.x | , l (-0.500000)
														 143 : dp2 r6.x, r7.xyxx, r7.xyxx
														 144 : rsq r6.x, r6.x
														 145 : mul r6.xy, r6.xxxx, r7.xyxx
														 146 : dp2 r6.x, r6.xyxx, r10.zwzz
														 147 : add r3.zw, r3.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
														 148 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 149 : ge r7.xyzw, r7.xyzw, -r7.zwzw
														 150 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 151 : mul r3.zw, r3.zzzw, r7.zzzw
														 152 : frc r3.zw, r3.zzzw
														 153 : mul r3.zw, r3.zzzw, r7.xxxy
														 154 : mad r6.y, r3.z, l (34.000000), l (1.000000)
														 155 : mul r3.z, r3.z, r6.y
														 156 : mul r6.y, r3.z, l (289.000000)
														 157 : ge r6.y, r6.y, -r6.y
														 158 : movc r6.yz, r6.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 159 : mul r3.z, r3.z, r6.z
														 160 : frc r3.z, r3.z
														 161 : mad r3.z, r6.y, r3.z, r3.w
														 162 : mad r3.w, r3.z, l (34.000000), l (1.000000)
														 163 : mul r3.z, r3.z, r3.w
														 164 : mul r3.w, r3.z, l (289.000000)
														 165 : ge r3.w, r3.w, -r3.w
														 166 : movc r6.yz, r3.wwww, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 167 : mul r3.z, r3.z, r6.z
														 168 : frc r3.z, r3.z
														 169 : mul r3.z, r3.z, r6.y
														 170 : mul r3.z, r3.z, l (0.024390)
														 171 : frc r3.z, r3.z
														 172 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
														 173 : round_ni r3.w, r3.w
														 174 : add r7.x, -r3.w, r3.z
														 175 : add r7.y, | r3.z | , l (-0.500000)
														 176 : dp2 r3.z, r7.xyxx, r7.xyxx
														 177 : rsq r3.z, r3.z
														 178 : mul r3.zw, r3.zzzz, r7.xxxy
														 179 : add r6.yz, r3.xxyx, l (0.000000, -1.000000, -1.000000, 0.000000)
														 180 : dp2 r3.z, r3.zwzz, r6.yzyy
														 181 : mul r6.yz, r3.xxyx, r3.xxyx
														 182 : mul r6.yz, r3.xxyx, r6.yyzy
														 183 : mad r7.xy, r3.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
														 184 : mad r3.xy, r3.xyxx, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
														 185 : mul r3.xy, r3.xyxx, r6.yzyy
														 186 : add r3.w, -r4.z, r4.w
														 187 : mad r3.w, r3.y, r3.w, r4.z
														 188 : add r3.z, -r6.x, r3.z
														 189 : mad r3.y, r3.y, r3.z, r6.x
														 190 : add r3.y, -r3.w, r3.y
														 191 : mad r3.x, r3.x, r3.y, r3.w
														 192 : add r3.x, r3.x, l (0.500000)
														 193 : mul r3.yz, r4.xxyx, cb2[1].xxxx
														 194 : round_ni r4.zw, r3.yyyz
														 195 : mul r6.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 196 : ge r6.xyzw, r6.xyzw, -r6.zwzw
														 197 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 198 : mul r6.zw, r4.zzzw, r6.zzzw
														 199 : frc r6.zw, r6.zzzw
														 200 : mul r6.xy, r6.zwzz, r6.xyxx
														 201 : mad r3.w, r6.x, l (34.000000), l (1.000000)
														 202 : mul r3.w, r6.x, r3.w
														 203 : mul r6.x, r3.w, l (289.000000)
														 204 : ge r6.x, r6.x, -r6.x
														 205 : movc r6.xz, r6.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
														 206 : mul r3.w, r3.w, r6.z
														 207 : frc r3.yzw, r3.yyzw
														 208 : mad r3.w, r6.x, r3.w, r6.y
														 209 : mad r6.x, r3.w, l (34.000000), l (1.000000)
														 210 : mul r3.w, r3.w, r6.x
														 211 : mul r6.x, r3.w, l (289.000000)
														 212 : ge r6.x, r6.x, -r6.x
														 213 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 214 : mul r3.w, r3.w, r6.y
														 215 : frc r3.w, r3.w
														 216 : mul r3.w, r3.w, r6.x
														 217 : mul r3.w, r3.w, l (0.024390)
														 218 : frc r3.w, r3.w
														 219 : mad r6.xy, r3.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
														 220 : round_ni r3.w, r6.y
														 221 : add r7.x, -r3.w, r6.x
														 222 : add r7.y, | r6.x | , l (-0.500000)
														 223 : dp2 r3.w, r7.xyxx, r7.xyxx
														 224 : rsq r3.w, r3.w
														 225 : mul r6.xy, r3.wwww, r7.xyxx
														 226 : dp2 r3.w, r6.xyxx, r3.yzyy
														 227 : add r6.xyzw, r4.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
														 228 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 229 : ge r7.xyzw, r7.xyzw, -r7.xyzw
														 230 : movc r10.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 231 : mul r6.xy, r6.xyxx, r10.zwzz
														 232 : frc r6.xy, r6.xyxx
														 233 : mul r6.xy, r6.xyxx, r10.xyxx
														 234 : mad r7.x, r6.x, l (34.000000), l (1.000000)
														 235 : mul r6.x, r6.x, r7.x
														 236 : mul r7.x, r6.x, l (289.000000)
														 237 : ge r7.x, r7.x, -r7.x
														 238 : movc r7.xy, r7.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 239 : mul r6.x, r6.x, r7.y
														 240 : frc r6.x, r6.x
														 241 : mad r6.x, r7.x, r6.x, r6.y
														 242 : mad r6.y, r6.x, l (34.000000), l (1.000000)
														 243 : mul r6.x, r6.x, r6.y
														 244 : mul r6.y, r6.x, l (289.000000)
														 245 : ge r6.y, r6.y, -r6.y
														 246 : movc r7.xy, r6.yyyy, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 247 : mul r6.x, r6.x, r7.y
														 248 : frc r6.x, r6.x
														 249 : mul r6.x, r6.x, r7.x
														 250 : mul r6.x, r6.x, l (0.024390)
														 251 : frc r6.x, r6.x
														 252 : mad r6.xy, r6.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
														 253 : round_ni r6.y, r6.y
														 254 : add r7.x, -r6.y, r6.x
														 255 : add r7.y, | r6.x | , l (-0.500000)
														 256 : dp2 r6.x, r7.xyxx, r7.xyxx
														 257 : rsq r6.x, r6.x
														 258 : mul r6.xy, r6.xxxx, r7.xyxx
														 259 : add r10.xyzw, r3.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
														 260 : dp2 r6.x, r6.xyxx, r10.xyxx
														 261 : movc r7.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 262 : mul r6.yz, r6.zzwz, r7.zzwz
														 263 : frc r6.yz, r6.yyzy
														 264 : mul r6.yz, r6.yyzy, r7.xxyx
														 265 : mad r6.w, r6.y, l (34.000000), l (1.000000)
														 266 : mul r6.y, r6.y, r6.w
														 267 : mul r6.w, r6.y, l (289.000000)
														 268 : ge r6.w, r6.w, -r6.w
														 269 : movc r7.xy, r6.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 270 : mul r6.y, r6.y, r7.y
														 271 : frc r6.y, r6.y
														 272 : mad r6.y, r7.x, r6.y, r6.z
														 273 : mad r6.z, r6.y, l (34.000000), l (1.000000)
														 274 : mul r6.y, r6.y, r6.z
														 275 : mul r6.z, r6.y, l (289.000000)
														 276 : ge r6.z, r6.z, -r6.z
														 277 : movc r6.zw, r6.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
														 278 : mul r6.y, r6.w, r6.y
														 279 : frc r6.y, r6.y
														 280 : mul r6.y, r6.y, r6.z
														 281 : mul r6.y, r6.y, l (0.024390)
														 282 : frc r6.y, r6.y
														 283 : mad r6.yz, r6.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
														 284 : round_ni r6.z, r6.z
														 285 : add r7.x, -r6.z, r6.y
														 286 : add r7.y, | r6.y | , l (-0.500000)
														 287 : dp2 r6.y, r7.xyxx, r7.xyxx
														 288 : rsq r6.y, r6.y
														 289 : mul r6.yz, r6.yyyy, r7.xxyx
														 290 : dp2 r6.y, r6.yzyy, r10.zwzz
														 291 : add r4.zw, r4.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
														 292 : mul r7.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 293 : ge r7.xyzw, r7.xyzw, -r7.zwzw
														 294 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 295 : mul r4.zw, r4.zzzw, r7.zzzw
														 296 : frc r4.zw, r4.zzzw
														 297 : mul r4.zw, r4.zzzw, r7.xxxy
														 298 : mad r6.z, r4.z, l (34.000000), l (1.000000)
														 299 : mul r4.z, r4.z, r6.z
														 300 : mul r6.z, r4.z, l (289.000000)
														 301 : ge r6.z, r6.z, -r6.z
														 302 : movc r6.zw, r6.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
														 303 : mul r4.z, r4.z, r6.w
														 304 : frc r4.z, r4.z
														 305 : mad r4.z, r6.z, r4.z, r4.w
														 306 : mad r4.w, r4.z, l (34.000000), l (1.000000)
														 307 : mul r4.z, r4.z, r4.w
														 308 : mul r4.w, r4.z, l (289.000000)
														 309 : ge r4.w, r4.w, -r4.w
														 310 : movc r6.zw, r4.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
														 311 : mul r4.z, r4.z, r6.w
														 312 : frc r4.z, r4.z
														 313 : mul r4.z, r4.z, r6.z
														 314 : mul r4.z, r4.z, l (0.024390)
														 315 : frc r4.z, r4.z
														 316 : mad r4.zw, r4.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
														 317 : round_ni r4.w, r4.w
														 318 : add r7.x, -r4.w, r4.z
														 319 : add r7.y, | r4.z | , l (-0.500000)
														 320 : dp2 r4.z, r7.xyxx, r7.xyxx
														 321 : rsq r4.z, r4.z
														 322 : mul r4.zw, r4.zzzz, r7.xxxy
														 323 : add r6.zw, r3.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
														 324 : dp2 r4.z, r4.zwzz, r6.zwzz
														 325 : mul r6.zw, r3.yyyz, r3.yyyz
														 326 : mul r6.zw, r3.yyyz, r6.zzzw
														 327 : mad r7.xy, r3.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
														 328 : mad r3.yz, r3.yyzy, r7.xxyx, l (0.000000, 10.000000, 10.000000, 0.000000)
														 329 : mul r3.yz, r3.yyzy, r6.zzwz
														 330 : add r4.w, -r3.w, r6.x
														 331 : mad r3.w, r3.z, r4.w, r3.w
														 332 : add r4.z, -r6.y, r4.z
														 333 : mad r3.z, r3.z, r4.z, r6.y
														 334 : add r3.z, -r3.w, r3.z
														 335 : mad r3.y, r3.y, r3.z, r3.w
														 336 : add r3.x, r3.x, r3.y
														 337 : add r3.x, r3.x, l (0.500000)
														 338 : mul_sat r3.x, r3.x, l (0.500000)
														 339 : log r3.x, r3.x
														 340 : mul r3.x, r3.x, cb2[5].z
														 341 : exp r3.x, r3.x
														 342 : add r3.x, r3.x, -cb2[2].x
														 343 : add r3.yz, -cb2[2].zzxz, cb2[2].wwyw
														 344 : mul r3.x, r3.y, r3.x
														 345 : div r3.x, r3.x, r3.z
														 346 : add r3.x, r3.x, cb2[2].z
														 347 : add r3.w, -cb2[5].x, cb2[5].y
														 348 : add r3.x, | r3.x | , -cb2[5].x
														 349 : div r3.w, l (1.000000, 1.000000, 1.000000, 1.000000), r3.w
														 350 : mul_sat r3.x, r3.w, r3.x
														 351 : mad r4.z, r3.x, l (-2.000000), l (3.000000)
														 352 : mul r3.x, r3.x, r3.x
														 353 : mad r4.xy, cb1[67].xxxx, cb2[6].xxxx, r4.xyxx
														 354 : mul r4.xy, r4.xyxx, cb2[5].wwww
														 355 : round_ni r6.xy, r4.xyxx
														 356 : mul r7.xyzw, r6.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
														 357 : ge r7.xyzw, r7.xyzw, -r7.zwzw
														 358 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 359 : mul r6.zw, r6.xxxy, r7.zzzw
														 360 : frc r6.zw, r6.zzzw
														 361 : mul r6.zw, r6.zzzw, r7.xxxy
														 362 : mad r4.w, r6.z, l (34.000000), l (1.000000)
														 363 : mul r4.w, r6.z, r4.w
														 364 : mul r6.z, r4.w, l (289.000000)
														 365 : ge r6.z, r6.z, -r6.z
														 366 : movc r7.xy, r6.zzzz, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 367 : mul r4.w, r4.w, r7.y
														 368 : frc r4.xyw, r4.xyxw
														 369 : mad r4.w, r7.x, r4.w, r6.w
														 370 : mad r6.z, r4.w, l (34.000000), l (1.000000)
														 371 : mul r4.w, r4.w, r6.z
														 372 : mul r6.z, r4.w, l (289.000000)
														 373 : ge r6.z, r6.z, -r6.z
														 374 : movc r6.zw, r6.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
														 375 : mul r4.w, r4.w, r6.w
														 376 : frc r4.w, r4.w
														 377 : mul r4.w, r4.w, r6.z
														 378 : mul r4.w, r4.w, l (0.024390)
														 379 : frc r4.w, r4.w
														 380 : mad r6.zw, r4.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
														 381 : round_ni r4.w, r6.w
														 382 : add r7.x, -r4.w, r6.z
														 383 : add r7.y, | r6.z | , l (-0.500000)
														 384 : dp2 r4.w, r7.xyxx, r7.xyxx
														 385 : rsq r4.w, r4.w
														 386 : mul r6.zw, r4.wwww, r7.xxxy
														 387 : dp2 r4.w, r6.zwzz, r4.xyxx
														 388 : add r7.xyzw, r6.xyxy, l (0.000000, 1.000000, 1.000000, 0.000000)
														 389 : mul r10.xyzw, r7.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 390 : ge r10.xyzw, r10.xyzw, -r10.xyzw
														 391 : movc r11.xyzw, r10.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 392 : mul r6.zw, r7.xxxy, r11.zzzw
														 393 : frc r6.zw, r6.zzzw
														 394 : mul r6.zw, r6.zzzw, r11.xxxy
														 395 : mad r7.x, r6.z, l (34.000000), l (1.000000)
														 396 : mul r6.z, r6.z, r7.x
														 397 : mul r7.x, r6.z, l (289.000000)
														 398 : ge r7.x, r7.x, -r7.x
														 399 : movc r7.xy, r7.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 400 : mul r6.z, r6.z, r7.y
														 401 : frc r6.z, r6.z
														 402 : mad r6.z, r7.x, r6.z, r6.w
														 403 : mad r6.w, r6.z, l (34.000000), l (1.000000)
														 404 : mul r6.z, r6.z, r6.w
														 405 : mul r6.w, r6.z, l (289.000000)
														 406 : ge r6.w, r6.w, -r6.w
														 407 : movc r7.xy, r6.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 408 : mul r6.z, r6.z, r7.y
														 409 : frc r6.z, r6.z
														 410 : mul r6.z, r6.z, r7.x
														 411 : mul r6.z, r6.z, l (0.024390)
														 412 : frc r6.z, r6.z
														 413 : mad r6.zw, r6.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
														 414 : round_ni r6.w, r6.w
														 415 : add r7.x, -r6.w, r6.z
														 416 : add r7.y, | r6.z | , l (-0.500000)
														 417 : dp2 r6.z, r7.xyxx, r7.xyxx
														 418 : rsq r6.z, r6.z
														 419 : mul r6.zw, r6.zzzz, r7.xxxy
														 420 : add r11.xyzw, r4.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
														 421 : dp2 r6.z, r6.zwzz, r11.xyxx
														 422 : movc r10.xyzw, r10.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 423 : mul r7.xy, r7.zwzz, r10.zwzz
														 424 : frc r7.xy, r7.xyxx
														 425 : mul r7.xy, r7.xyxx, r10.xyxx
														 426 : mad r6.w, r7.x, l (34.000000), l (1.000000)
														 427 : mul r6.w, r7.x, r6.w
														 428 : mul r7.x, r6.w, l (289.000000)
														 429 : ge r7.x, r7.x, -r7.x
														 430 : movc r7.xz, r7.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
														 431 : mul r6.w, r6.w, r7.z
														 432 : frc r6.w, r6.w
														 433 : mad r6.w, r7.x, r6.w, r7.y
														 434 : mad r7.x, r6.w, l (34.000000), l (1.000000)
														 435 : mul r6.w, r6.w, r7.x
														 436 : mul r7.x, r6.w, l (289.000000)
														 437 : ge r7.x, r7.x, -r7.x
														 438 : movc r7.xy, r7.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 439 : mul r6.w, r6.w, r7.y
														 440 : frc r6.w, r6.w
														 441 : mul r6.w, r6.w, r7.x
														 442 : mul r6.w, r6.w, l (0.024390)
														 443 : frc r6.w, r6.w
														 444 : mad r7.xy, r6.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
														 445 : round_ni r6.w, r7.y
														 446 : add r10.x, -r6.w, r7.x
														 447 : add r10.y, | r7.x | , l (-0.500000)
														 448 : dp2 r6.w, r10.xyxx, r10.xyxx
														 449 : rsq r6.w, r6.w
														 450 : mul r7.xy, r6.wwww, r10.xyxx
														 451 : dp2 r6.w, r7.xyxx, r11.zwzz
														 452 : add r6.xy, r6.xyxx, l (1.000000, 1.000000, 0.000000, 0.000000)
														 453 : mul r7.xyzw, r6.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
														 454 : ge r7.xyzw, r7.xyzw, -r7.zwzw
														 455 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 456 : mul r6.xy, r6.xyxx, r7.zwzz
														 457 : frc r6.xy, r6.xyxx
														 458 : mul r6.xy, r6.xyxx, r7.xyxx
														 459 : mad r7.x, r6.x, l (34.000000), l (1.000000)
														 460 : mul r6.x, r6.x, r7.x
														 461 : mul r7.x, r6.x, l (289.000000)
														 462 : ge r7.x, r7.x, -r7.x
														 463 : movc r7.xy, r7.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 464 : mul r6.x, r6.x, r7.y
														 465 : frc r6.x, r6.x
														 466 : mad r6.x, r7.x, r6.x, r6.y
														 467 : mad r6.y, r6.x, l (34.000000), l (1.000000)
														 468 : mul r6.x, r6.x, r6.y
														 469 : mul r6.y, r6.x, l (289.000000)
														 470 : ge r6.y, r6.y, -r6.y
														 471 : movc r7.xy, r6.yyyy, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 472 : mul r6.x, r6.x, r7.y
														 473 : frc r6.x, r6.x
														 474 : mul r6.x, r6.x, r7.x
														 475 : mul r6.x, r6.x, l (0.024390)
														 476 : frc r6.x, r6.x
														 477 : mad r6.xy, r6.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
														 478 : round_ni r6.y, r6.y
														 479 : add r7.x, -r6.y, r6.x
														 480 : add r7.y, | r6.x | , l (-0.500000)
														 481 : dp2 r6.x, r7.xyxx, r7.xyxx
														 482 : rsq r6.x, r6.x
														 483 : mul r6.xy, r6.xxxx, r7.xyxx
														 484 : add r7.xy, r4.xyxx, l (-1.000000, -1.000000, 0.000000, 0.000000)
														 485 : dp2 r6.x, r6.xyxx, r7.xyxx
														 486 : mul r7.xy, r4.xyxx, r4.xyxx
														 487 : mul r7.xy, r4.xyxx, r7.xyxx
														 488 : mad r7.zw, r4.xxxy, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
														 489 : mad r4.xy, r4.xyxx, r7.zwzz, l (10.000000, 10.000000, 0.000000, 0.000000)
														 490 : mul r4.xy, r4.xyxx, r7.xyxx
														 491 : add r6.y, -r4.w, r6.z
														 492 : mad r4.w, r4.y, r6.y, r4.w
														 493 : add r6.x, -r6.w, r6.x
														 494 : mad r4.y, r4.y, r6.x, r6.w
														 495 : add r4.y, -r4.w, r4.y
														 496 : mad r4.x, r4.x, r4.y, r4.w
														 497 : add r4.x, r4.x, l (0.500000)
														 498 : mul r4.x, r4.x, cb2[6].y
														 499 : mad r3.x, r4.z, r3.x, r4.x
														 500 : add r4.x, cb2[6].y, l (1.000000)
														 501 : div r3.x, r3.x, r4.x
														 502 : mul r4.yzw, r3.xxxx, v1.xxyz
														 503 : mad r4.yzw, r4.yyzw, cb2[1].zzzz, v0.xxyz
														 504 : mad r6.xyz, r0.xyzx, r0.wwww, r4.yzwy
														 505 : mov r6.w, l (1.000000)
														 506 : dp4 r7.x, r2.xyzw, r6.xyzw
														 507 : dp4 r7.y, r5.xyzw, r6.xyzw
														 508 : dp4 r7.z, r1.xyzw, r6.xyzw
														 509 : mul r6.xyzw, r7.yyyy, cb1[17].xyzw
														 510 : mad r6.xyzw, cb1[16].xyzw, r7.xxxx, r6.xyzw
														 511 : mad r6.xyzw, cb1[18].xyzw, r7.zzzz, r6.xyzw
														 512 : add o2.xyzw, r6.xyzw, cb1[19].xyzw
														 513 : mul r4.yzw, r7.yyyy, cb1[29].xxyw
														 514 : mad r4.yzw, cb1[28].xxyw, r7.xxxx, r4.yyzw
														 515 : mad r4.yzw, cb1[30].xxyw, r7.zzzz, r4.yyzw
														 516 : add o0.xyz, r4.yzwy, cb1[31].xywx
														 517 : eq r0.w, cb0[36].y, l (0.000000)
														 518 : if_nz r0.w
														 519 : mov o1.xyz, l (0,0,1.000000,0)
														 520 : else
														 521:   lt r0.w, l (0.000000), cb0[36].x
														 522 : movc r6.xyz, r0.wwww, v3.xyzx, v0.xyzx
														 523 : mov r6.w, l (1.000000)
														 524 : dp4 r2.x, r2.xyzw, r6.xyzw
														 525 : dp4 r2.y, r5.xyzw, r6.xyzw
														 526 : dp4 r2.z, r1.xyzw, r6.xyzw
														 527 : add r1.xyz, r2.xyzx, cb1[40].xyzx
														 528 : add r2.xyz, -r1.xyzx, cb0[3].xyzx
														 529 : dp3 r0.w, r2.xyzx, r2.xyzx
														 530 : sqrt r0.w, r0.w
														 531 : div r0.w, r0.w, cb2[6].w
														 532 : mul r1.w, r0.w, r0.w
														 533 : mul r0.w, r0.w, r1.w
														 534 : dp3 r2.x, r8.xzwx, r1.xyzx
														 535 : dp3 r2.y, r9.ywzy, r1.xyzx
														 536 : mad r1.xy, cb1[68].xxxx, cb2[1].yyyy, r2.xyxx
														 537 : mul r1.xy, r1.xyxx, cb2[1].xxxx
														 538 : round_ni r1.zw, r1.xxxy
														 539 : frc r1.xy, r1.xyxx
														 540 : mul r5.xyzw, r1.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 541 : ge r5.xyzw, r5.xyzw, -r5.zwzw
														 542 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 543 : mul r2.zw, r1.zzzw, r5.zzzw
														 544 : frc r2.zw, r2.zzzw
														 545 : mul r2.zw, r2.zzzw, r5.xxxy
														 546 : mad r3.x, r2.z, l (34.000000), l (1.000000)
														 547 : mul r2.z, r2.z, r3.x
														 548 : mul r3.x, r2.z, l (289.000000)
														 549 : ge r3.x, r3.x, -r3.x
														 550 : movc r4.yz, r3.xxxx, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 551 : mul r2.z, r2.z, r4.z
														 552 : frc r2.z, r2.z
														 553 : mad r2.z, r4.y, r2.z, r2.w
														 554 : mad r2.w, r2.z, l (34.000000), l (1.000000)
														 555 : mul r2.z, r2.z, r2.w
														 556 : mul r2.w, r2.z, l (289.000000)
														 557 : ge r2.w, r2.w, -r2.w
														 558 : movc r4.yz, r2.wwww, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 559 : mul r2.z, r2.z, r4.z
														 560 : frc r2.z, r2.z
														 561 : mul r2.z, r2.z, r4.y
														 562 : mul r2.z, r2.z, l (0.024390)
														 563 : frc r2.z, r2.z
														 564 : mad r2.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
														 565 : round_ni r2.w, r2.w
														 566 : add r5.x, -r2.w, r2.z
														 567 : add r5.y, | r2.z | , l (-0.500000)
														 568 : dp2 r2.z, r5.xyxx, r5.xyxx
														 569 : rsq r2.z, r2.z
														 570 : mul r2.zw, r2.zzzz, r5.xxxy
														 571 : dp2 r2.z, r2.zwzz, r1.xyxx
														 572 : add r5.xyzw, r1.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
														 573 : mul r8.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 574 : ge r8.xyzw, r8.xyzw, -r8.xyzw
														 575 : movc r9.xyzw, r8.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 576 : mul r4.yz, r5.xxyx, r9.zzwz
														 577 : frc r4.yz, r4.yyzy
														 578 : mul r4.yz, r4.yyzy, r9.xxyx
														 579 : mad r2.w, r4.y, l (34.000000), l (1.000000)
														 580 : mul r2.w, r4.y, r2.w
														 581 : mul r3.x, r2.w, l (289.000000)
														 582 : ge r3.x, r3.x, -r3.x
														 583 : movc r4.yw, r3.xxxx, l (0,289.000000,0,0.003460), l (0,-289.000000,0,-0.003460)
														 584 : mul r2.w, r2.w, r4.w
														 585 : frc r2.w, r2.w
														 586 : mad r2.w, r4.y, r2.w, r4.z
														 587 : mad r3.x, r2.w, l (34.000000), l (1.000000)
														 588 : mul r2.w, r2.w, r3.x
														 589 : mul r3.x, r2.w, l (289.000000)
														 590 : ge r3.x, r3.x, -r3.x
														 591 : movc r4.yz, r3.xxxx, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 592 : mul r2.w, r2.w, r4.z
														 593 : frc r2.w, r2.w
														 594 : mul r2.w, r2.w, r4.y
														 595 : mul r2.w, r2.w, l (0.024390)
														 596 : frc r2.w, r2.w
														 597 : mad r4.yz, r2.wwww, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
														 598 : round_ni r2.w, r4.z
														 599 : add r5.x, -r2.w, r4.y
														 600 : add r5.y, | r4.y | , l (-0.500000)
														 601 : dp2 r2.w, r5.xyxx, r5.xyxx
														 602 : rsq r2.w, r2.w
														 603 : mul r4.yz, r2.wwww, r5.xxyx
														 604 : add r9.xyzw, r1.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
														 605 : dp2 r2.w, r4.yzyy, r9.xyxx
														 606 : movc r8.xyzw, r8.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 607 : mul r4.yz, r5.zzwz, r8.zzwz
														 608 : frc r4.yz, r4.yyzy
														 609 : mul r4.yz, r4.yyzy, r8.xxyx
														 610 : mad r3.x, r4.y, l (34.000000), l (1.000000)
														 611 : mul r3.x, r4.y, r3.x
														 612 : mul r4.y, r3.x, l (289.000000)
														 613 : ge r4.y, r4.y, -r4.y
														 614 : movc r4.yw, r4.yyyy, l (0,289.000000,0,0.003460), l (0,-289.000000,0,-0.003460)
														 615 : mul r3.x, r3.x, r4.w
														 616 : frc r3.x, r3.x
														 617 : mad r3.x, r4.y, r3.x, r4.z
														 618 : mad r4.y, r3.x, l (34.000000), l (1.000000)
														 619 : mul r3.x, r3.x, r4.y
														 620 : mul r4.y, r3.x, l (289.000000)
														 621 : ge r4.y, r4.y, -r4.y
														 622 : movc r4.yz, r4.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 623 : mul r3.x, r3.x, r4.z
														 624 : frc r3.x, r3.x
														 625 : mul r3.x, r3.x, r4.y
														 626 : mul r3.x, r3.x, l (0.024390)
														 627 : frc r3.x, r3.x
														 628 : mad r4.yz, r3.xxxx, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
														 629 : round_ni r3.x, r4.z
														 630 : add r5.x, -r3.x, r4.y
														 631 : add r5.y, | r4.y | , l (-0.500000)
														 632 : dp2 r3.x, r5.xyxx, r5.xyxx
														 633 : rsq r3.x, r3.x
														 634 : mul r4.yz, r3.xxxx, r5.xxyx
														 635 : dp2 r3.x, r4.yzyy, r9.zwzz
														 636 : add r1.zw, r1.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
														 637 : mul r5.xyzw, r1.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 638 : ge r5.xyzw, r5.xyzw, -r5.zwzw
														 639 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 640 : mul r1.zw, r1.zzzw, r5.zzzw
														 641 : frc r1.zw, r1.zzzw
														 642 : mul r1.zw, r1.zzzw, r5.xxxy
														 643 : mad r4.y, r1.z, l (34.000000), l (1.000000)
														 644 : mul r1.z, r1.z, r4.y
														 645 : mul r4.y, r1.z, l (289.000000)
														 646 : ge r4.y, r4.y, -r4.y
														 647 : movc r4.yz, r4.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 648 : mul r1.z, r1.z, r4.z
														 649 : frc r1.z, r1.z
														 650 : mad r1.z, r4.y, r1.z, r1.w
														 651 : mad r1.w, r1.z, l (34.000000), l (1.000000)
														 652 : mul r1.z, r1.z, r1.w
														 653 : mul r1.w, r1.z, l (289.000000)
														 654 : ge r1.w, r1.w, -r1.w
														 655 : movc r4.yz, r1.wwww, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 656 : mul r1.z, r1.z, r4.z
														 657 : frc r1.z, r1.z
														 658 : mul r1.z, r1.z, r4.y
														 659 : mul r1.z, r1.z, l (0.024390)
														 660 : frc r1.z, r1.z
														 661 : mad r1.zw, r1.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
														 662 : round_ni r1.w, r1.w
														 663 : add r5.x, -r1.w, r1.z
														 664 : add r5.y, | r1.z | , l (-0.500000)
														 665 : dp2 r1.z, r5.xyxx, r5.xyxx
														 666 : rsq r1.z, r1.z
														 667 : mul r1.zw, r1.zzzz, r5.xxxy
														 668 : add r4.yz, r1.xxyx, l (0.000000, -1.000000, -1.000000, 0.000000)
														 669 : dp2 r1.z, r1.zwzz, r4.yzyy
														 670 : mul r4.yz, r1.xxyx, r1.xxyx
														 671 : mul r4.yz, r1.xxyx, r4.yyzy
														 672 : mad r5.xy, r1.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
														 673 : mad r1.xy, r1.xyxx, r5.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
														 674 : mul r1.xy, r1.xyxx, r4.yzyy
														 675 : add r1.w, -r2.z, r2.w
														 676 : mad r1.w, r1.y, r1.w, r2.z
														 677 : add r1.z, -r3.x, r1.z
														 678 : mad r1.y, r1.y, r1.z, r3.x
														 679 : add r1.y, -r1.w, r1.y
														 680 : mad r1.x, r1.x, r1.y, r1.w
														 681 : add r1.x, r1.x, l (0.500000)
														 682 : mul r1.yz, r2.xxyx, cb2[1].xxxx
														 683 : round_ni r2.zw, r1.yyyz
														 684 : mul r5.xyzw, r2.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 685 : ge r5.xyzw, r5.xyzw, -r5.zwzw
														 686 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 687 : mul r4.yz, r2.zzwz, r5.zzwz
														 688 : frc r4.yz, r4.yyzy
														 689 : mul r4.yz, r4.yyzy, r5.xxyx
														 690 : mad r1.w, r4.y, l (34.000000), l (1.000000)
														 691 : mul r1.w, r4.y, r1.w
														 692 : mul r3.x, r1.w, l (289.000000)
														 693 : ge r3.x, r3.x, -r3.x
														 694 : movc r4.yw, r3.xxxx, l (0,289.000000,0,0.003460), l (0,-289.000000,0,-0.003460)
														 695 : mul r1.w, r1.w, r4.w
														 696 : frc r1.yzw, r1.yyzw
														 697 : mad r1.w, r4.y, r1.w, r4.z
														 698 : mad r3.x, r1.w, l (34.000000), l (1.000000)
														 699 : mul r1.w, r1.w, r3.x
														 700 : mul r3.x, r1.w, l (289.000000)
														 701 : ge r3.x, r3.x, -r3.x
														 702 : movc r4.yz, r3.xxxx, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 703 : mul r1.w, r1.w, r4.z
														 704 : frc r1.w, r1.w
														 705 : mul r1.w, r1.w, r4.y
														 706 : mul r1.w, r1.w, l (0.024390)
														 707 : frc r1.w, r1.w
														 708 : mad r4.yz, r1.wwww, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
														 709 : round_ni r1.w, r4.z
														 710 : add r5.x, -r1.w, r4.y
														 711 : add r5.y, | r4.y | , l (-0.500000)
														 712 : dp2 r1.w, r5.xyxx, r5.xyxx
														 713 : rsq r1.w, r1.w
														 714 : mul r4.yz, r1.wwww, r5.xxyx
														 715 : dp2 r1.w, r4.yzyy, r1.yzyy
														 716 : add r5.xyzw, r2.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
														 717 : mul r8.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 718 : ge r8.xyzw, r8.xyzw, -r8.xyzw
														 719 : movc r9.xyzw, r8.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 720 : mul r4.yz, r5.xxyx, r9.zzwz
														 721 : frc r4.yz, r4.yyzy
														 722 : mul r4.yz, r4.yyzy, r9.xxyx
														 723 : mad r3.x, r4.y, l (34.000000), l (1.000000)
														 724 : mul r3.x, r4.y, r3.x
														 725 : mul r4.y, r3.x, l (289.000000)
														 726 : ge r4.y, r4.y, -r4.y
														 727 : movc r4.yw, r4.yyyy, l (0,289.000000,0,0.003460), l (0,-289.000000,0,-0.003460)
														 728 : mul r3.x, r3.x, r4.w
														 729 : frc r3.x, r3.x
														 730 : mad r3.x, r4.y, r3.x, r4.z
														 731 : mad r4.y, r3.x, l (34.000000), l (1.000000)
														 732 : mul r3.x, r3.x, r4.y
														 733 : mul r4.y, r3.x, l (289.000000)
														 734 : ge r4.y, r4.y, -r4.y
														 735 : movc r4.yz, r4.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 736 : mul r3.x, r3.x, r4.z
														 737 : frc r3.x, r3.x
														 738 : mul r3.x, r3.x, r4.y
														 739 : mul r3.x, r3.x, l (0.024390)
														 740 : frc r3.x, r3.x
														 741 : mad r4.yz, r3.xxxx, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
														 742 : round_ni r3.x, r4.z
														 743 : add r5.x, -r3.x, r4.y
														 744 : add r5.y, | r4.y | , l (-0.500000)
														 745 : dp2 r3.x, r5.xyxx, r5.xyxx
														 746 : rsq r3.x, r3.x
														 747 : mul r4.yz, r3.xxxx, r5.xxyx
														 748 : add r9.xyzw, r1.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
														 749 : dp2 r3.x, r4.yzyy, r9.xyxx
														 750 : movc r8.xyzw, r8.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 751 : mul r4.yz, r5.zzwz, r8.zzwz
														 752 : frc r4.yz, r4.yyzy
														 753 : mul r4.yz, r4.yyzy, r8.xxyx
														 754 : mad r4.w, r4.y, l (34.000000), l (1.000000)
														 755 : mul r4.y, r4.y, r4.w
														 756 : mul r4.w, r4.y, l (289.000000)
														 757 : ge r4.w, r4.w, -r4.w
														 758 : movc r5.xy, r4.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 759 : mul r4.y, r4.y, r5.y
														 760 : frc r4.y, r4.y
														 761 : mad r4.y, r5.x, r4.y, r4.z
														 762 : mad r4.z, r4.y, l (34.000000), l (1.000000)
														 763 : mul r4.y, r4.y, r4.z
														 764 : mul r4.z, r4.y, l (289.000000)
														 765 : ge r4.z, r4.z, -r4.z
														 766 : movc r4.zw, r4.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
														 767 : mul r4.y, r4.w, r4.y
														 768 : frc r4.y, r4.y
														 769 : mul r4.y, r4.y, r4.z
														 770 : mul r4.y, r4.y, l (0.024390)
														 771 : frc r4.y, r4.y
														 772 : mad r4.yz, r4.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
														 773 : round_ni r4.z, r4.z
														 774 : add r5.x, -r4.z, r4.y
														 775 : add r5.y, | r4.y | , l (-0.500000)
														 776 : dp2 r4.y, r5.xyxx, r5.xyxx
														 777 : rsq r4.y, r4.y
														 778 : mul r4.yz, r4.yyyy, r5.xxyx
														 779 : dp2 r4.y, r4.yzyy, r9.zwzz
														 780 : add r2.zw, r2.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
														 781 : mul r5.xyzw, r2.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 782 : ge r5.xyzw, r5.xyzw, -r5.zwzw
														 783 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 784 : mul r2.zw, r2.zzzw, r5.zzzw
														 785 : frc r2.zw, r2.zzzw
														 786 : mul r2.zw, r2.zzzw, r5.xxxy
														 787 : mad r4.z, r2.z, l (34.000000), l (1.000000)
														 788 : mul r2.z, r2.z, r4.z
														 789 : mul r4.z, r2.z, l (289.000000)
														 790 : ge r4.z, r4.z, -r4.z
														 791 : movc r4.zw, r4.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
														 792 : mul r2.z, r2.z, r4.w
														 793 : frc r2.z, r2.z
														 794 : mad r2.z, r4.z, r2.z, r2.w
														 795 : mad r2.w, r2.z, l (34.000000), l (1.000000)
														 796 : mul r2.z, r2.z, r2.w
														 797 : mul r2.w, r2.z, l (289.000000)
														 798 : ge r2.w, r2.w, -r2.w
														 799 : movc r4.zw, r2.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
														 800 : mul r2.z, r2.z, r4.w
														 801 : frc r2.z, r2.z
														 802 : mul r2.z, r2.z, r4.z
														 803 : mul r2.z, r2.z, l (0.024390)
														 804 : frc r2.z, r2.z
														 805 : mad r2.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
														 806 : round_ni r2.w, r2.w
														 807 : add r5.x, -r2.w, r2.z
														 808 : add r5.y, | r2.z | , l (-0.500000)
														 809 : dp2 r2.z, r5.xyxx, r5.xyxx
														 810 : rsq r2.z, r2.z
														 811 : mul r2.zw, r2.zzzz, r5.xxxy
														 812 : add r4.zw, r1.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
														 813 : dp2 r2.z, r2.zwzz, r4.zwzz
														 814 : mul r4.zw, r1.yyyz, r1.yyyz
														 815 : mul r4.zw, r1.yyyz, r4.zzzw
														 816 : mad r5.xy, r1.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
														 817 : mad r1.yz, r1.yyzy, r5.xxyx, l (0.000000, 10.000000, 10.000000, 0.000000)
														 818 : mul r1.yz, r1.yyzy, r4.zzwz
														 819 : add r2.w, -r1.w, r3.x
														 820 : mad r1.w, r1.z, r2.w, r1.w
														 821 : add r2.z, -r4.y, r2.z
														 822 : mad r1.z, r1.z, r2.z, r4.y
														 823 : add r1.z, -r1.w, r1.z
														 824 : mad r1.y, r1.y, r1.z, r1.w
														 825 : add r1.x, r1.x, r1.y
														 826 : add r1.x, r1.x, l (0.500000)
														 827 : mul_sat r1.x, r1.x, l (0.500000)
														 828 : log r1.x, r1.x
														 829 : mul r1.x, r1.x, cb2[5].z
														 830 : exp r1.x, r1.x
														 831 : add r1.x, r1.x, -cb2[2].x
														 832 : mul r1.x, r3.y, r1.x
														 833 : div r1.x, r1.x, r3.z
														 834 : add r1.x, r1.x, cb2[2].z
														 835 : add r1.x, | r1.x | , -cb2[5].x
														 836 : mul_sat r1.x, r3.w, r1.x
														 837 : mad r1.y, r1.x, l (-2.000000), l (3.000000)
														 838 : mul r1.x, r1.x, r1.x
														 839 : mad r1.zw, cb1[68].xxxx, cb2[6].xxxx, r2.xxxy
														 840 : mul r1.zw, r1.zzzw, cb2[5].wwww
														 841 : round_ni r2.xy, r1.zwzz
														 842 : frc r1.zw, r1.zzzw
														 843 : mul r3.xyzw, r2.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
														 844 : ge r3.xyzw, r3.xyzw, -r3.zwzw
														 845 : movc r3.xyzw, r3.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 846 : mul r2.zw, r2.xxxy, r3.zzzw
														 847 : frc r2.zw, r2.zzzw
														 848 : mul r2.zw, r2.zzzw, r3.xxxy
														 849 : mad r3.x, r2.z, l (34.000000), l (1.000000)
														 850 : mul r2.z, r2.z, r3.x
														 851 : mul r3.x, r2.z, l (289.000000)
														 852 : ge r3.x, r3.x, -r3.x
														 853 : movc r3.xy, r3.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 854 : mul r2.z, r2.z, r3.y
														 855 : frc r2.z, r2.z
														 856 : mad r2.z, r3.x, r2.z, r2.w
														 857 : mad r2.w, r2.z, l (34.000000), l (1.000000)
														 858 : mul r2.z, r2.z, r2.w
														 859 : mul r2.w, r2.z, l (289.000000)
														 860 : ge r2.w, r2.w, -r2.w
														 861 : movc r3.xy, r2.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 862 : mul r2.z, r2.z, r3.y
														 863 : frc r2.z, r2.z
														 864 : mul r2.z, r2.z, r3.x
														 865 : mul r2.z, r2.z, l (0.024390)
														 866 : frc r2.z, r2.z
														 867 : mad r2.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
														 868 : round_ni r2.w, r2.w
														 869 : add r3.x, -r2.w, r2.z
														 870 : add r3.y, | r2.z | , l (-0.500000)
														 871 : dp2 r2.z, r3.xyxx, r3.xyxx
														 872 : rsq r2.z, r2.z
														 873 : mul r2.zw, r2.zzzz, r3.xxxy
														 874 : dp2 r2.z, r2.zwzz, r1.zwzz
														 875 : add r3.xyzw, r2.xyxy, l (0.000000, 1.000000, 1.000000, 0.000000)
														 876 : mul r5.xyzw, r3.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
														 877 : ge r5.xyzw, r5.xyzw, -r5.xyzw
														 878 : movc r8.xyzw, r5.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 879 : mul r3.xy, r3.xyxx, r8.zwzz
														 880 : frc r3.xy, r3.xyxx
														 881 : mul r3.xy, r3.xyxx, r8.xyxx
														 882 : mad r2.w, r3.x, l (34.000000), l (1.000000)
														 883 : mul r2.w, r3.x, r2.w
														 884 : mul r3.x, r2.w, l (289.000000)
														 885 : ge r3.x, r3.x, -r3.x
														 886 : movc r4.yz, r3.xxxx, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 887 : mul r2.w, r2.w, r4.z
														 888 : frc r2.w, r2.w
														 889 : mad r2.w, r4.y, r2.w, r3.y
														 890 : mad r3.x, r2.w, l (34.000000), l (1.000000)
														 891 : mul r2.w, r2.w, r3.x
														 892 : mul r3.x, r2.w, l (289.000000)
														 893 : ge r3.x, r3.x, -r3.x
														 894 : movc r3.xy, r3.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
														 895 : mul r2.w, r2.w, r3.y
														 896 : frc r2.w, r2.w
														 897 : mul r2.w, r2.w, r3.x
														 898 : mul r2.w, r2.w, l (0.024390)
														 899 : frc r2.w, r2.w
														 900 : mad r3.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
														 901 : round_ni r2.w, r3.y
														 902 : add r5.x, -r2.w, r3.x
														 903 : add r5.y, | r3.x | , l (-0.500000)
														 904 : dp2 r2.w, r5.xyxx, r5.xyxx
														 905 : rsq r2.w, r2.w
														 906 : mul r3.xy, r2.wwww, r5.xyxx
														 907 : add r8.xyzw, r1.zwzw, l (-0.000000, -1.000000, -1.000000, -0.000000)
														 908 : dp2 r2.w, r3.xyxx, r8.xyxx
														 909 : movc r5.xyzw, r5.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 910 : mul r3.xy, r3.zwzz, r5.zwzz
														 911 : frc r3.xy, r3.xyxx
														 912 : mul r3.xy, r3.xyxx, r5.xyxx
														 913 : mad r3.z, r3.x, l (34.000000), l (1.000000)
														 914 : mul r3.x, r3.x, r3.z
														 915 : mul r3.z, r3.x, l (289.000000)
														 916 : ge r3.z, r3.z, -r3.z
														 917 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
														 918 : mul r3.x, r3.w, r3.x
														 919 : frc r3.x, r3.x
														 920 : mad r3.x, r3.z, r3.x, r3.y
														 921 : mad r3.y, r3.x, l (34.000000), l (1.000000)
														 922 : mul r3.x, r3.x, r3.y
														 923 : mul r3.y, r3.x, l (289.000000)
														 924 : ge r3.y, r3.y, -r3.y
														 925 : movc r3.yz, r3.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 926 : mul r3.x, r3.z, r3.x
														 927 : frc r3.x, r3.x
														 928 : mul r3.x, r3.x, r3.y
														 929 : mul r3.x, r3.x, l (0.024390)
														 930 : frc r3.x, r3.x
														 931 : mad r3.xy, r3.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
														 932 : round_ni r3.y, r3.y
														 933 : add r5.x, -r3.y, r3.x
														 934 : add r5.y, | r3.x | , l (-0.500000)
														 935 : dp2 r3.x, r5.xyxx, r5.xyxx
														 936 : rsq r3.x, r3.x
														 937 : mul r3.xy, r3.xxxx, r5.xyxx
														 938 : dp2 r3.x, r3.xyxx, r8.zwzz
														 939 : add r2.xy, r2.xyxx, l (1.000000, 1.000000, 0.000000, 0.000000)
														 940 : mul r5.xyzw, r2.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
														 941 : ge r5.xyzw, r5.xyzw, -r5.zwzw
														 942 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
														 943 : mul r2.xy, r2.xyxx, r5.zwzz
														 944 : frc r2.xy, r2.xyxx
														 945 : mul r2.xy, r2.xyxx, r5.xyxx
														 946 : mad r3.y, r2.x, l (34.000000), l (1.000000)
														 947 : mul r2.x, r2.x, r3.y
														 948 : mul r3.y, r2.x, l (289.000000)
														 949 : ge r3.y, r3.y, -r3.y
														 950 : movc r3.yz, r3.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 951 : mul r2.x, r2.x, r3.z
														 952 : frc r2.x, r2.x
														 953 : mad r2.x, r3.y, r2.x, r2.y
														 954 : mad r2.y, r2.x, l (34.000000), l (1.000000)
														 955 : mul r2.x, r2.x, r2.y
														 956 : mul r2.y, r2.x, l (289.000000)
														 957 : ge r2.y, r2.y, -r2.y
														 958 : movc r3.yz, r2.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
														 959 : mul r2.x, r2.x, r3.z
														 960 : frc r2.x, r2.x
														 961 : mul r2.x, r2.x, r3.y
														 962 : mul r2.x, r2.x, l (0.024390)
														 963 : frc r2.x, r2.x
														 964 : mad r2.xy, r2.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
														 965 : round_ni r2.y, r2.y
														 966 : add r5.x, -r2.y, r2.x
														 967 : add r5.y, | r2.x | , l (-0.500000)
														 968 : dp2 r2.x, r5.xyxx, r5.xyxx
														 969 : rsq r2.x, r2.x
														 970 : mul r2.xy, r2.xxxx, r5.xyxx
														 971 : add r3.yz, r1.zzwz, l (0.000000, -1.000000, -1.000000, 0.000000)
														 972 : dp2 r2.x, r2.xyxx, r3.yzyy
														 973 : mul r3.yz, r1.zzwz, r1.zzwz
														 974 : mul r3.yz, r1.zzwz, r3.yyzy
														 975 : mad r4.yz, r1.zzwz, l (0.000000, 6.000000, 6.000000, 0.000000), l (0.000000, -15.000000, -15.000000, 0.000000)
														 976 : mad r1.zw, r1.zzzw, r4.yyyz, l (0.000000, 0.000000, 10.000000, 10.000000)
														 977 : mul r1.zw, r1.zzzw, r3.yyyz
														 978 : add r2.y, -r2.z, r2.w
														 979 : mad r2.y, r1.w, r2.y, r2.z
														 980 : add r2.x, -r3.x, r2.x
														 981 : mad r1.w, r1.w, r2.x, r3.x
														 982 : add r1.w, -r2.y, r1.w
														 983 : mad r1.z, r1.z, r1.w, r2.y
														 984 : add r1.z, r1.z, l (0.500000)
														 985 : mul r1.z, r1.z, cb2[6].y
														 986 : mad r1.x, r1.y, r1.x, r1.z
														 987 : div r1.x, r1.x, r4.x
														 988 : mul r1.xyz, r1.xxxx, v1.xyzx
														 989 : mad r1.xyz, r1.xyzx, cb2[1].zzzz, r6.xyzx
														 990 : mad r0.xyz, r0.xyzx, r0.wwww, r1.xyzx
														 991 : add r1.xyw, cb0[31].xyxz, -cb1[40].xyxz
														 992 : mov r2.x, cb0[28].x
														 993 : mov r2.y, cb0[29].x
														 994 : mov r2.z, cb0[30].x
														 995 : mov r2.w, r1.x
														 996 : mov r0.w, l (1.000000)
														 997 : dp4 r2.x, r2.xyzw, r0.xyzw
														 998 : mov r3.x, cb0[28].y
														 999 : mov r3.y, cb0[29].y
														1000 : mov r3.z, cb0[30].y
														1001 : mov r3.w, r1.y
														1002 : dp4 r2.y, r3.xyzw, r0.xyzw
														1003 : mov r1.x, cb0[28].z
														1004 : mov r1.y, cb0[29].z
														1005 : mov r1.z, cb0[30].z
														1006 : dp4 r0.x, r1.xyzw, r0.xyzw
														1007 : mul r0.yzw, r2.yyyy, cb1[33].xxyw
														1008 : mad r0.yzw, cb1[32].xxyw, r2.xxxx, r0.yyzw
														1009 : mad r0.xyz, cb1[34].xywx, r0.xxxx, r0.yzwy
														1010 : add o1.xyz, r0.xyzx, cb1[35].xywx
														1011 : endif
														1012 : mov o3.xyz, r7.xyzx
														1013 : ret
																  // Approximately 0 instruction slots used


																  -- Hardware tier variant : Tier 1
																  --Fragment shader for "d3d11" :
																  // Stats: 5 math, 1 temp registers
																  Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
																	Vector4 unity_MotionVectorsParams at 576
																  }

																  Shader Disassembly :
																  //
																  // Generated by Microsoft (R) D3D Shader Disassembler
																  //
																  //
																  // Input signature:
																  //
																  // Name                 Index   Mask Register SysValue  Format   Used
																  // -------------------- ----- ------ -------- -------- ------- ------
																  // TEXCOORD                 8   xyz         0     NONE   float   xyz 
																  // TEXCOORD                 9   xyz         1     NONE   float   xyz 
																  // SV_POSITION              0   xyzw        2      POS   float       
																  // TEXCOORD                 0   xyz         3     NONE   float       
																  //
																  //
																  // Output signature:
																  //
																  // Name                 Index   Mask Register SysValue  Format   Used
																  // -------------------- ----- ------ -------- -------- ------- ------
																  // SV_Target                0   xyzw        0   TARGET   float   xyzw
																  //
																		ps_5_0
																		dcl_globalFlags refactoringAllowed
																		dcl_constantbuffer CB0[37], immediateIndexed
																		dcl_input_ps linear v0.xyz
																		dcl_input_ps linear v1.xyz
																		dcl_output o0.xyzw
																		dcl_temps 1
																	 0: div r0.xy, v0.xyxx, v0.zzzz
																	 1 : div r0.zw, v1.xxxy, v1.zzzz
																	 2 : add r0.xy, -r0.zwzz, r0.xyxx
																	 3 : mul r0.xy, r0.xyxx, l (0.500000, -0.500000, 0.000000, 0.000000)
																	 4 : eq r0.z, cb0[36].y, l (0.000000)
																	 5 : movc o0.xy, r0.zzzz, l (2.000000,0,0,0), r0.xyxx
																	 6 : mov o0.zw, l (0,0,0,0)
																	 7 : ret
																			// Approximately 0 instruction slots used


																			//////////////////////////////////////////////////////
																			Global Keywords : WRITE_MSAA_DEPTH
																			Local Keywords : <none>
																			--Hardware tier variant : Tier 1
																			--Vertex shader for "d3d11" :
																			// Stats: 905 math, 12 temp registers, 2 branches
																			Uses vertex data channel "Vertex"
																			Uses vertex data channel "Normal"
																			Uses vertex data channel "TexCoord4"

																			Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
																			  Matrix4x4 unity_ObjectToWorld at 0
																			  Matrix4x4 unity_WorldToObject at 64
																			  Matrix4x4 unity_MatrixPreviousM at 448
																			  Vector4 unity_MotionVectorsParams at 576
																			}
																			Constant Buffer "UnityGlobal" (7216 bytes) on slot 1 {
																			  Matrix4x4 _ViewProjMatrix at 256
																			  Matrix4x4 _NonJitteredViewProjMatrix at 448
																			  Matrix4x4 _PrevViewProjMatrix at 512
																			  Vector3 _WorldSpaceCameraPos at 640
																			  Vector4 _TimeParameters at 1072
																			  Vector4 _LastTimeParameters at 1088
																			}
																			Constant Buffer "UnityPerMaterial" (304 bytes) on slot 2 {
																			  Vector4 Vector4_59D9B7DE at 0
																			  Float Vector1_C24F477F at 16
																			  Float Vector1_3F53ED5D at 20
																			  Float Vector1_34A2131D at 24
																			  Vector4 Vector4_BD02EA1F at 32
																			  Float Vector1_B73C588D at 80
																			  Float Vector1_157C4927 at 84
																			  Float Vector1_31818DD2 at 88
																			  Float Vector1_2E449449 at 92
																			  Float Vector1_1100DBB4 at 96
																			  Float Vector1_745E6F83 at 100
																			  Float Vector1_835232BE at 108
																			}

																			Shader Disassembly :
																			//
																			// Generated by Microsoft (R) D3D Shader Disassembler
																			//
																			//
																			// Input signature:
																			//
																			// Name                 Index   Mask Register SysValue  Format   Used
																			// -------------------- ----- ------ -------- -------- ------- ------
																			// POSITION                 0   xyz         0     NONE   float   xyz 
																			// NORMAL                   0   xyz         1     NONE   float   xyz 
																			// TANGENT                  0   xyzw        2     NONE   float       
																			// TEXCOORD                 4   xyz         3     NONE   float   xyz 
																			//
																			//
																			// Output signature:
																			//
																			// Name                 Index   Mask Register SysValue  Format   Used
																			// -------------------- ----- ------ -------- -------- ------- ------
																			// TEXCOORD                 8   xyz         0     NONE   float   xyz 
																			// TEXCOORD                 9   xyz         1     NONE   float   xyz 
																			// SV_POSITION              0   xyzw        2      POS   float   xyzw
																			// TEXCOORD                 0   xyz         3     NONE   float   xyz 
																			//
																				  vs_5_0
																				  dcl_globalFlags refactoringAllowed
																				  dcl_constantbuffer CB0[37], immediateIndexed
																				  dcl_constantbuffer CB1[69], immediateIndexed
																				  dcl_constantbuffer CB2[7], immediateIndexed
																				  dcl_input v0.xyz
																				  dcl_input v1.xyz
																				  dcl_input v3.xyz
																				  dcl_output o0.xyz
																				  dcl_output o1.xyz
																				  dcl_output_siv o2.xyzw, position
																				  dcl_output o3.xyz
																				  dcl_temps 12
																			   0: dp3 r0.x, v1.xyzx, cb0[4].xyzx
																			   1 : dp3 r0.y, v1.xyzx, cb0[5].xyzx
																			   2 : dp3 r0.z, v1.xyzx, cb0[6].xyzx
																			   3 : dp3 r0.w, r0.xyzx, r0.xyzx
																			   4 : max r0.w, r0.w, l (0.000000)
																			   5 : rsq r0.w, r0.w
																			   6 : mul r0.xyz, r0.wwww, r0.xyzx
																			   7 : add r1.xyw, cb0[3].xyxz, -cb1[40].xyxz
																			   8 : mov r2.x, cb0[0].x
																			   9 : mov r2.y, cb0[1].x
																			  10 : mov r2.z, cb0[2].x
																			  11 : mov r2.w, r1.x
																			  12 : mov r3.xyz, v0.xyzx
																			  13 : mov r3.w, l (1.000000)
																			  14 : dp4 r4.x, r2.xyzw, r3.xyzw
																			  15 : mov r5.x, cb0[0].y
																			  16 : mov r5.y, cb0[1].y
																			  17 : mov r5.z, cb0[2].y
																			  18 : mov r5.w, r1.y
																			  19 : dp4 r4.y, r5.xyzw, r3.xyzw
																			  20 : mov r1.x, cb0[0].z
																			  21 : mov r1.y, cb0[1].z
																			  22 : mov r1.z, cb0[2].z
																			  23 : dp4 r4.z, r1.xyzw, r3.xyzw
																			  24 : add r3.xyz, r4.xyzx, cb1[40].xyzx
																			  25 : add r4.xyz, -r3.xyzx, cb0[3].xyzx
																			  26 : dp3 r0.w, r4.xyzx, r4.xyzx
																			  27 : sqrt r0.w, r0.w
																			  28 : div r0.w, r0.w, cb2[6].w
																			  29 : mul r3.w, r0.w, r0.w
																			  30 : mul r0.w, r0.w, r3.w
																			  31 : mul r3.w, cb2[0].w, l (0.017453)
																			  32 : sincos r4.x, r6.x, r3.w
																			  33 : add r3.w, -r6.x, l (1.000000)
																			  34 : dp3 r4.y, cb2[0].xyzx, cb2[0].xyzx
																			  35 : rsq r4.y, r4.y
																			  36 : mul r4.yzw, r4.yyyy, cb2[0].zzyx
																			  37 : mul r7.xyzw, r3.wwww, r4.wwyz
																			  38 : mul r6.yzw, r4.xxxx, r4.yyzw
																			  39 : mad r8.z, r7.y, r4.z, -r6.y
																			  40 : mad r9.xy, r7.zyzz, r4.wzww, r6.zyzz
																			  41 : mad r8.xy, r7.xwxx, r4.wzww, r6.xxxx
																			  42 : mad r9.z, r7.w, r4.y, -r6.w
																			  43 : mov r8.w, r9.x
																			  44 : dp3 r4.x, r8.xzwx, r3.xyzx
																			  45 : mov r9.w, r8.y
																			  46 : dp3 r4.y, r9.ywzy, r3.xyzx
																			  47 : mad r3.xy, cb1[67].xxxx, cb2[1].yyyy, r4.xyxx
																			  48 : mul r3.xy, r3.xyxx, cb2[1].xxxx
																			  49 : round_ni r3.zw, r3.xxxy
																			  50 : frc r3.xy, r3.xyxx
																			  51 : mul r6.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			  52 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																			  53 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			  54 : mul r4.zw, r3.zzzw, r6.zzzw
																			  55 : frc r4.zw, r4.zzzw
																			  56 : mul r4.zw, r4.zzzw, r6.xxxy
																			  57 : mad r6.x, r4.z, l (34.000000), l (1.000000)
																			  58 : mul r4.z, r4.z, r6.x
																			  59 : mul r6.x, r4.z, l (289.000000)
																			  60 : ge r6.x, r6.x, -r6.x
																			  61 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			  62 : mul r4.z, r4.z, r6.y
																			  63 : frc r4.z, r4.z
																			  64 : mad r4.z, r6.x, r4.z, r4.w
																			  65 : mad r4.w, r4.z, l (34.000000), l (1.000000)
																			  66 : mul r4.z, r4.z, r4.w
																			  67 : mul r4.w, r4.z, l (289.000000)
																			  68 : ge r4.w, r4.w, -r4.w
																			  69 : movc r6.xy, r4.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			  70 : mul r4.z, r4.z, r6.y
																			  71 : frc r4.z, r4.z
																			  72 : mul r4.z, r4.z, r6.x
																			  73 : mul r4.z, r4.z, l (0.024390)
																			  74 : frc r4.z, r4.z
																			  75 : mad r4.zw, r4.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																			  76 : round_ni r4.w, r4.w
																			  77 : add r6.x, -r4.w, r4.z
																			  78 : add r6.y, | r4.z | , l (-0.500000)
																			  79 : dp2 r4.z, r6.xyxx, r6.xyxx
																			  80 : rsq r4.z, r4.z
																			  81 : mul r4.zw, r4.zzzz, r6.xxxy
																			  82 : dp2 r4.z, r4.zwzz, r3.xyxx
																			  83 : add r6.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																			  84 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			  85 : ge r7.xyzw, r7.xyzw, -r7.xyzw
																			  86 : movc r10.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			  87 : mul r6.xy, r6.xyxx, r10.zwzz
																			  88 : frc r6.xy, r6.xyxx
																			  89 : mul r6.xy, r6.xyxx, r10.xyxx
																			  90 : mad r4.w, r6.x, l (34.000000), l (1.000000)
																			  91 : mul r4.w, r6.x, r4.w
																			  92 : mul r6.x, r4.w, l (289.000000)
																			  93 : ge r6.x, r6.x, -r6.x
																			  94 : movc r7.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			  95 : mul r4.w, r4.w, r7.y
																			  96 : frc r4.w, r4.w
																			  97 : mad r4.w, r7.x, r4.w, r6.y
																			  98 : mad r6.x, r4.w, l (34.000000), l (1.000000)
																			  99 : mul r4.w, r4.w, r6.x
																			 100 : mul r6.x, r4.w, l (289.000000)
																			 101 : ge r6.x, r6.x, -r6.x
																			 102 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 103 : mul r4.w, r4.w, r6.y
																			 104 : frc r4.w, r4.w
																			 105 : mul r4.w, r4.w, r6.x
																			 106 : mul r4.w, r4.w, l (0.024390)
																			 107 : frc r4.w, r4.w
																			 108 : mad r6.xy, r4.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																			 109 : round_ni r4.w, r6.y
																			 110 : add r7.x, -r4.w, r6.x
																			 111 : add r7.y, | r6.x | , l (-0.500000)
																			 112 : dp2 r4.w, r7.xyxx, r7.xyxx
																			 113 : rsq r4.w, r4.w
																			 114 : mul r6.xy, r4.wwww, r7.xyxx
																			 115 : add r10.xyzw, r3.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																			 116 : dp2 r4.w, r6.xyxx, r10.xyxx
																			 117 : movc r7.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 118 : mul r6.xy, r6.zwzz, r7.zwzz
																			 119 : frc r6.xy, r6.xyxx
																			 120 : mul r6.xy, r6.xyxx, r7.xyxx
																			 121 : mad r6.z, r6.x, l (34.000000), l (1.000000)
																			 122 : mul r6.x, r6.x, r6.z
																			 123 : mul r6.z, r6.x, l (289.000000)
																			 124 : ge r6.z, r6.z, -r6.z
																			 125 : movc r6.zw, r6.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																			 126 : mul r6.x, r6.w, r6.x
																			 127 : frc r6.x, r6.x
																			 128 : mad r6.x, r6.z, r6.x, r6.y
																			 129 : mad r6.y, r6.x, l (34.000000), l (1.000000)
																			 130 : mul r6.x, r6.x, r6.y
																			 131 : mul r6.y, r6.x, l (289.000000)
																			 132 : ge r6.y, r6.y, -r6.y
																			 133 : movc r6.yz, r6.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 134 : mul r6.x, r6.z, r6.x
																			 135 : frc r6.x, r6.x
																			 136 : mul r6.x, r6.x, r6.y
																			 137 : mul r6.x, r6.x, l (0.024390)
																			 138 : frc r6.x, r6.x
																			 139 : mad r6.xy, r6.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																			 140 : round_ni r6.y, r6.y
																			 141 : add r7.x, -r6.y, r6.x
																			 142 : add r7.y, | r6.x | , l (-0.500000)
																			 143 : dp2 r6.x, r7.xyxx, r7.xyxx
																			 144 : rsq r6.x, r6.x
																			 145 : mul r6.xy, r6.xxxx, r7.xyxx
																			 146 : dp2 r6.x, r6.xyxx, r10.zwzz
																			 147 : add r3.zw, r3.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
																			 148 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 149 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																			 150 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 151 : mul r3.zw, r3.zzzw, r7.zzzw
																			 152 : frc r3.zw, r3.zzzw
																			 153 : mul r3.zw, r3.zzzw, r7.xxxy
																			 154 : mad r6.y, r3.z, l (34.000000), l (1.000000)
																			 155 : mul r3.z, r3.z, r6.y
																			 156 : mul r6.y, r3.z, l (289.000000)
																			 157 : ge r6.y, r6.y, -r6.y
																			 158 : movc r6.yz, r6.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 159 : mul r3.z, r3.z, r6.z
																			 160 : frc r3.z, r3.z
																			 161 : mad r3.z, r6.y, r3.z, r3.w
																			 162 : mad r3.w, r3.z, l (34.000000), l (1.000000)
																			 163 : mul r3.z, r3.z, r3.w
																			 164 : mul r3.w, r3.z, l (289.000000)
																			 165 : ge r3.w, r3.w, -r3.w
																			 166 : movc r6.yz, r3.wwww, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 167 : mul r3.z, r3.z, r6.z
																			 168 : frc r3.z, r3.z
																			 169 : mul r3.z, r3.z, r6.y
																			 170 : mul r3.z, r3.z, l (0.024390)
																			 171 : frc r3.z, r3.z
																			 172 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																			 173 : round_ni r3.w, r3.w
																			 174 : add r7.x, -r3.w, r3.z
																			 175 : add r7.y, | r3.z | , l (-0.500000)
																			 176 : dp2 r3.z, r7.xyxx, r7.xyxx
																			 177 : rsq r3.z, r3.z
																			 178 : mul r3.zw, r3.zzzz, r7.xxxy
																			 179 : add r6.yz, r3.xxyx, l (0.000000, -1.000000, -1.000000, 0.000000)
																			 180 : dp2 r3.z, r3.zwzz, r6.yzyy
																			 181 : mul r6.yz, r3.xxyx, r3.xxyx
																			 182 : mul r6.yz, r3.xxyx, r6.yyzy
																			 183 : mad r7.xy, r3.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																			 184 : mad r3.xy, r3.xyxx, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
																			 185 : mul r3.xy, r3.xyxx, r6.yzyy
																			 186 : add r3.w, -r4.z, r4.w
																			 187 : mad r3.w, r3.y, r3.w, r4.z
																			 188 : add r3.z, -r6.x, r3.z
																			 189 : mad r3.y, r3.y, r3.z, r6.x
																			 190 : add r3.y, -r3.w, r3.y
																			 191 : mad r3.x, r3.x, r3.y, r3.w
																			 192 : add r3.x, r3.x, l (0.500000)
																			 193 : mul r3.yz, r4.xxyx, cb2[1].xxxx
																			 194 : round_ni r4.zw, r3.yyyz
																			 195 : mul r6.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 196 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																			 197 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 198 : mul r6.zw, r4.zzzw, r6.zzzw
																			 199 : frc r6.zw, r6.zzzw
																			 200 : mul r6.xy, r6.zwzz, r6.xyxx
																			 201 : mad r3.w, r6.x, l (34.000000), l (1.000000)
																			 202 : mul r3.w, r6.x, r3.w
																			 203 : mul r6.x, r3.w, l (289.000000)
																			 204 : ge r6.x, r6.x, -r6.x
																			 205 : movc r6.xz, r6.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
																			 206 : mul r3.w, r3.w, r6.z
																			 207 : frc r3.yzw, r3.yyzw
																			 208 : mad r3.w, r6.x, r3.w, r6.y
																			 209 : mad r6.x, r3.w, l (34.000000), l (1.000000)
																			 210 : mul r3.w, r3.w, r6.x
																			 211 : mul r6.x, r3.w, l (289.000000)
																			 212 : ge r6.x, r6.x, -r6.x
																			 213 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 214 : mul r3.w, r3.w, r6.y
																			 215 : frc r3.w, r3.w
																			 216 : mul r3.w, r3.w, r6.x
																			 217 : mul r3.w, r3.w, l (0.024390)
																			 218 : frc r3.w, r3.w
																			 219 : mad r6.xy, r3.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																			 220 : round_ni r3.w, r6.y
																			 221 : add r7.x, -r3.w, r6.x
																			 222 : add r7.y, | r6.x | , l (-0.500000)
																			 223 : dp2 r3.w, r7.xyxx, r7.xyxx
																			 224 : rsq r3.w, r3.w
																			 225 : mul r6.xy, r3.wwww, r7.xyxx
																			 226 : dp2 r3.w, r6.xyxx, r3.yzyy
																			 227 : add r6.xyzw, r4.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																			 228 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 229 : ge r7.xyzw, r7.xyzw, -r7.xyzw
																			 230 : movc r10.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 231 : mul r6.xy, r6.xyxx, r10.zwzz
																			 232 : frc r6.xy, r6.xyxx
																			 233 : mul r6.xy, r6.xyxx, r10.xyxx
																			 234 : mad r7.x, r6.x, l (34.000000), l (1.000000)
																			 235 : mul r6.x, r6.x, r7.x
																			 236 : mul r7.x, r6.x, l (289.000000)
																			 237 : ge r7.x, r7.x, -r7.x
																			 238 : movc r7.xy, r7.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 239 : mul r6.x, r6.x, r7.y
																			 240 : frc r6.x, r6.x
																			 241 : mad r6.x, r7.x, r6.x, r6.y
																			 242 : mad r6.y, r6.x, l (34.000000), l (1.000000)
																			 243 : mul r6.x, r6.x, r6.y
																			 244 : mul r6.y, r6.x, l (289.000000)
																			 245 : ge r6.y, r6.y, -r6.y
																			 246 : movc r7.xy, r6.yyyy, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 247 : mul r6.x, r6.x, r7.y
																			 248 : frc r6.x, r6.x
																			 249 : mul r6.x, r6.x, r7.x
																			 250 : mul r6.x, r6.x, l (0.024390)
																			 251 : frc r6.x, r6.x
																			 252 : mad r6.xy, r6.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																			 253 : round_ni r6.y, r6.y
																			 254 : add r7.x, -r6.y, r6.x
																			 255 : add r7.y, | r6.x | , l (-0.500000)
																			 256 : dp2 r6.x, r7.xyxx, r7.xyxx
																			 257 : rsq r6.x, r6.x
																			 258 : mul r6.xy, r6.xxxx, r7.xyxx
																			 259 : add r10.xyzw, r3.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
																			 260 : dp2 r6.x, r6.xyxx, r10.xyxx
																			 261 : movc r7.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 262 : mul r6.yz, r6.zzwz, r7.zzwz
																			 263 : frc r6.yz, r6.yyzy
																			 264 : mul r6.yz, r6.yyzy, r7.xxyx
																			 265 : mad r6.w, r6.y, l (34.000000), l (1.000000)
																			 266 : mul r6.y, r6.y, r6.w
																			 267 : mul r6.w, r6.y, l (289.000000)
																			 268 : ge r6.w, r6.w, -r6.w
																			 269 : movc r7.xy, r6.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 270 : mul r6.y, r6.y, r7.y
																			 271 : frc r6.y, r6.y
																			 272 : mad r6.y, r7.x, r6.y, r6.z
																			 273 : mad r6.z, r6.y, l (34.000000), l (1.000000)
																			 274 : mul r6.y, r6.y, r6.z
																			 275 : mul r6.z, r6.y, l (289.000000)
																			 276 : ge r6.z, r6.z, -r6.z
																			 277 : movc r6.zw, r6.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																			 278 : mul r6.y, r6.w, r6.y
																			 279 : frc r6.y, r6.y
																			 280 : mul r6.y, r6.y, r6.z
																			 281 : mul r6.y, r6.y, l (0.024390)
																			 282 : frc r6.y, r6.y
																			 283 : mad r6.yz, r6.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																			 284 : round_ni r6.z, r6.z
																			 285 : add r7.x, -r6.z, r6.y
																			 286 : add r7.y, | r6.y | , l (-0.500000)
																			 287 : dp2 r6.y, r7.xyxx, r7.xyxx
																			 288 : rsq r6.y, r6.y
																			 289 : mul r6.yz, r6.yyyy, r7.xxyx
																			 290 : dp2 r6.y, r6.yzyy, r10.zwzz
																			 291 : add r4.zw, r4.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
																			 292 : mul r7.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 293 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																			 294 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 295 : mul r4.zw, r4.zzzw, r7.zzzw
																			 296 : frc r4.zw, r4.zzzw
																			 297 : mul r4.zw, r4.zzzw, r7.xxxy
																			 298 : mad r6.z, r4.z, l (34.000000), l (1.000000)
																			 299 : mul r4.z, r4.z, r6.z
																			 300 : mul r6.z, r4.z, l (289.000000)
																			 301 : ge r6.z, r6.z, -r6.z
																			 302 : movc r6.zw, r6.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																			 303 : mul r4.z, r4.z, r6.w
																			 304 : frc r4.z, r4.z
																			 305 : mad r4.z, r6.z, r4.z, r4.w
																			 306 : mad r4.w, r4.z, l (34.000000), l (1.000000)
																			 307 : mul r4.z, r4.z, r4.w
																			 308 : mul r4.w, r4.z, l (289.000000)
																			 309 : ge r4.w, r4.w, -r4.w
																			 310 : movc r6.zw, r4.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																			 311 : mul r4.z, r4.z, r6.w
																			 312 : frc r4.z, r4.z
																			 313 : mul r4.z, r4.z, r6.z
																			 314 : mul r4.z, r4.z, l (0.024390)
																			 315 : frc r4.z, r4.z
																			 316 : mad r4.zw, r4.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																			 317 : round_ni r4.w, r4.w
																			 318 : add r7.x, -r4.w, r4.z
																			 319 : add r7.y, | r4.z | , l (-0.500000)
																			 320 : dp2 r4.z, r7.xyxx, r7.xyxx
																			 321 : rsq r4.z, r4.z
																			 322 : mul r4.zw, r4.zzzz, r7.xxxy
																			 323 : add r6.zw, r3.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
																			 324 : dp2 r4.z, r4.zwzz, r6.zwzz
																			 325 : mul r6.zw, r3.yyyz, r3.yyyz
																			 326 : mul r6.zw, r3.yyyz, r6.zzzw
																			 327 : mad r7.xy, r3.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																			 328 : mad r3.yz, r3.yyzy, r7.xxyx, l (0.000000, 10.000000, 10.000000, 0.000000)
																			 329 : mul r3.yz, r3.yyzy, r6.zzwz
																			 330 : add r4.w, -r3.w, r6.x
																			 331 : mad r3.w, r3.z, r4.w, r3.w
																			 332 : add r4.z, -r6.y, r4.z
																			 333 : mad r3.z, r3.z, r4.z, r6.y
																			 334 : add r3.z, -r3.w, r3.z
																			 335 : mad r3.y, r3.y, r3.z, r3.w
																			 336 : add r3.x, r3.x, r3.y
																			 337 : add r3.x, r3.x, l (0.500000)
																			 338 : mul_sat r3.x, r3.x, l (0.500000)
																			 339 : log r3.x, r3.x
																			 340 : mul r3.x, r3.x, cb2[5].z
																			 341 : exp r3.x, r3.x
																			 342 : add r3.x, r3.x, -cb2[2].x
																			 343 : add r3.yz, -cb2[2].zzxz, cb2[2].wwyw
																			 344 : mul r3.x, r3.y, r3.x
																			 345 : div r3.x, r3.x, r3.z
																			 346 : add r3.x, r3.x, cb2[2].z
																			 347 : add r3.w, -cb2[5].x, cb2[5].y
																			 348 : add r3.x, | r3.x | , -cb2[5].x
																			 349 : div r3.w, l (1.000000, 1.000000, 1.000000, 1.000000), r3.w
																			 350 : mul_sat r3.x, r3.w, r3.x
																			 351 : mad r4.z, r3.x, l (-2.000000), l (3.000000)
																			 352 : mul r3.x, r3.x, r3.x
																			 353 : mad r4.xy, cb1[67].xxxx, cb2[6].xxxx, r4.xyxx
																			 354 : mul r4.xy, r4.xyxx, cb2[5].wwww
																			 355 : round_ni r6.xy, r4.xyxx
																			 356 : mul r7.xyzw, r6.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 357 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																			 358 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 359 : mul r6.zw, r6.xxxy, r7.zzzw
																			 360 : frc r6.zw, r6.zzzw
																			 361 : mul r6.zw, r6.zzzw, r7.xxxy
																			 362 : mad r4.w, r6.z, l (34.000000), l (1.000000)
																			 363 : mul r4.w, r6.z, r4.w
																			 364 : mul r6.z, r4.w, l (289.000000)
																			 365 : ge r6.z, r6.z, -r6.z
																			 366 : movc r7.xy, r6.zzzz, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 367 : mul r4.w, r4.w, r7.y
																			 368 : frc r4.xyw, r4.xyxw
																			 369 : mad r4.w, r7.x, r4.w, r6.w
																			 370 : mad r6.z, r4.w, l (34.000000), l (1.000000)
																			 371 : mul r4.w, r4.w, r6.z
																			 372 : mul r6.z, r4.w, l (289.000000)
																			 373 : ge r6.z, r6.z, -r6.z
																			 374 : movc r6.zw, r6.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																			 375 : mul r4.w, r4.w, r6.w
																			 376 : frc r4.w, r4.w
																			 377 : mul r4.w, r4.w, r6.z
																			 378 : mul r4.w, r4.w, l (0.024390)
																			 379 : frc r4.w, r4.w
																			 380 : mad r6.zw, r4.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																			 381 : round_ni r4.w, r6.w
																			 382 : add r7.x, -r4.w, r6.z
																			 383 : add r7.y, | r6.z | , l (-0.500000)
																			 384 : dp2 r4.w, r7.xyxx, r7.xyxx
																			 385 : rsq r4.w, r4.w
																			 386 : mul r6.zw, r4.wwww, r7.xxxy
																			 387 : dp2 r4.w, r6.zwzz, r4.xyxx
																			 388 : add r7.xyzw, r6.xyxy, l (0.000000, 1.000000, 1.000000, 0.000000)
																			 389 : mul r10.xyzw, r7.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 390 : ge r10.xyzw, r10.xyzw, -r10.xyzw
																			 391 : movc r11.xyzw, r10.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 392 : mul r6.zw, r7.xxxy, r11.zzzw
																			 393 : frc r6.zw, r6.zzzw
																			 394 : mul r6.zw, r6.zzzw, r11.xxxy
																			 395 : mad r7.x, r6.z, l (34.000000), l (1.000000)
																			 396 : mul r6.z, r6.z, r7.x
																			 397 : mul r7.x, r6.z, l (289.000000)
																			 398 : ge r7.x, r7.x, -r7.x
																			 399 : movc r7.xy, r7.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 400 : mul r6.z, r6.z, r7.y
																			 401 : frc r6.z, r6.z
																			 402 : mad r6.z, r7.x, r6.z, r6.w
																			 403 : mad r6.w, r6.z, l (34.000000), l (1.000000)
																			 404 : mul r6.z, r6.z, r6.w
																			 405 : mul r6.w, r6.z, l (289.000000)
																			 406 : ge r6.w, r6.w, -r6.w
																			 407 : movc r7.xy, r6.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 408 : mul r6.z, r6.z, r7.y
																			 409 : frc r6.z, r6.z
																			 410 : mul r6.z, r6.z, r7.x
																			 411 : mul r6.z, r6.z, l (0.024390)
																			 412 : frc r6.z, r6.z
																			 413 : mad r6.zw, r6.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																			 414 : round_ni r6.w, r6.w
																			 415 : add r7.x, -r6.w, r6.z
																			 416 : add r7.y, | r6.z | , l (-0.500000)
																			 417 : dp2 r6.z, r7.xyxx, r7.xyxx
																			 418 : rsq r6.z, r6.z
																			 419 : mul r6.zw, r6.zzzz, r7.xxxy
																			 420 : add r11.xyzw, r4.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																			 421 : dp2 r6.z, r6.zwzz, r11.xyxx
																			 422 : movc r10.xyzw, r10.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 423 : mul r7.xy, r7.zwzz, r10.zwzz
																			 424 : frc r7.xy, r7.xyxx
																			 425 : mul r7.xy, r7.xyxx, r10.xyxx
																			 426 : mad r6.w, r7.x, l (34.000000), l (1.000000)
																			 427 : mul r6.w, r7.x, r6.w
																			 428 : mul r7.x, r6.w, l (289.000000)
																			 429 : ge r7.x, r7.x, -r7.x
																			 430 : movc r7.xz, r7.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
																			 431 : mul r6.w, r6.w, r7.z
																			 432 : frc r6.w, r6.w
																			 433 : mad r6.w, r7.x, r6.w, r7.y
																			 434 : mad r7.x, r6.w, l (34.000000), l (1.000000)
																			 435 : mul r6.w, r6.w, r7.x
																			 436 : mul r7.x, r6.w, l (289.000000)
																			 437 : ge r7.x, r7.x, -r7.x
																			 438 : movc r7.xy, r7.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 439 : mul r6.w, r6.w, r7.y
																			 440 : frc r6.w, r6.w
																			 441 : mul r6.w, r6.w, r7.x
																			 442 : mul r6.w, r6.w, l (0.024390)
																			 443 : frc r6.w, r6.w
																			 444 : mad r7.xy, r6.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																			 445 : round_ni r6.w, r7.y
																			 446 : add r10.x, -r6.w, r7.x
																			 447 : add r10.y, | r7.x | , l (-0.500000)
																			 448 : dp2 r6.w, r10.xyxx, r10.xyxx
																			 449 : rsq r6.w, r6.w
																			 450 : mul r7.xy, r6.wwww, r10.xyxx
																			 451 : dp2 r6.w, r7.xyxx, r11.zwzz
																			 452 : add r6.xy, r6.xyxx, l (1.000000, 1.000000, 0.000000, 0.000000)
																			 453 : mul r7.xyzw, r6.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 454 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																			 455 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 456 : mul r6.xy, r6.xyxx, r7.zwzz
																			 457 : frc r6.xy, r6.xyxx
																			 458 : mul r6.xy, r6.xyxx, r7.xyxx
																			 459 : mad r7.x, r6.x, l (34.000000), l (1.000000)
																			 460 : mul r6.x, r6.x, r7.x
																			 461 : mul r7.x, r6.x, l (289.000000)
																			 462 : ge r7.x, r7.x, -r7.x
																			 463 : movc r7.xy, r7.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 464 : mul r6.x, r6.x, r7.y
																			 465 : frc r6.x, r6.x
																			 466 : mad r6.x, r7.x, r6.x, r6.y
																			 467 : mad r6.y, r6.x, l (34.000000), l (1.000000)
																			 468 : mul r6.x, r6.x, r6.y
																			 469 : mul r6.y, r6.x, l (289.000000)
																			 470 : ge r6.y, r6.y, -r6.y
																			 471 : movc r7.xy, r6.yyyy, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 472 : mul r6.x, r6.x, r7.y
																			 473 : frc r6.x, r6.x
																			 474 : mul r6.x, r6.x, r7.x
																			 475 : mul r6.x, r6.x, l (0.024390)
																			 476 : frc r6.x, r6.x
																			 477 : mad r6.xy, r6.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																			 478 : round_ni r6.y, r6.y
																			 479 : add r7.x, -r6.y, r6.x
																			 480 : add r7.y, | r6.x | , l (-0.500000)
																			 481 : dp2 r6.x, r7.xyxx, r7.xyxx
																			 482 : rsq r6.x, r6.x
																			 483 : mul r6.xy, r6.xxxx, r7.xyxx
																			 484 : add r7.xy, r4.xyxx, l (-1.000000, -1.000000, 0.000000, 0.000000)
																			 485 : dp2 r6.x, r6.xyxx, r7.xyxx
																			 486 : mul r7.xy, r4.xyxx, r4.xyxx
																			 487 : mul r7.xy, r4.xyxx, r7.xyxx
																			 488 : mad r7.zw, r4.xxxy, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
																			 489 : mad r4.xy, r4.xyxx, r7.zwzz, l (10.000000, 10.000000, 0.000000, 0.000000)
																			 490 : mul r4.xy, r4.xyxx, r7.xyxx
																			 491 : add r6.y, -r4.w, r6.z
																			 492 : mad r4.w, r4.y, r6.y, r4.w
																			 493 : add r6.x, -r6.w, r6.x
																			 494 : mad r4.y, r4.y, r6.x, r6.w
																			 495 : add r4.y, -r4.w, r4.y
																			 496 : mad r4.x, r4.x, r4.y, r4.w
																			 497 : add r4.x, r4.x, l (0.500000)
																			 498 : mul r4.x, r4.x, cb2[6].y
																			 499 : mad r3.x, r4.z, r3.x, r4.x
																			 500 : add r4.x, cb2[6].y, l (1.000000)
																			 501 : div r3.x, r3.x, r4.x
																			 502 : mul r4.yzw, r3.xxxx, v1.xxyz
																			 503 : mad r4.yzw, r4.yyzw, cb2[1].zzzz, v0.xxyz
																			 504 : mad r6.xyz, r0.xyzx, r0.wwww, r4.yzwy
																			 505 : mov r6.w, l (1.000000)
																			 506 : dp4 r7.x, r2.xyzw, r6.xyzw
																			 507 : dp4 r7.y, r5.xyzw, r6.xyzw
																			 508 : dp4 r7.z, r1.xyzw, r6.xyzw
																			 509 : mul r6.xyzw, r7.yyyy, cb1[17].xyzw
																			 510 : mad r6.xyzw, cb1[16].xyzw, r7.xxxx, r6.xyzw
																			 511 : mad r6.xyzw, cb1[18].xyzw, r7.zzzz, r6.xyzw
																			 512 : add o2.xyzw, r6.xyzw, cb1[19].xyzw
																			 513 : mul r4.yzw, r7.yyyy, cb1[29].xxyw
																			 514 : mad r4.yzw, cb1[28].xxyw, r7.xxxx, r4.yyzw
																			 515 : mad r4.yzw, cb1[30].xxyw, r7.zzzz, r4.yyzw
																			 516 : add o0.xyz, r4.yzwy, cb1[31].xywx
																			 517 : eq r0.w, cb0[36].y, l (0.000000)
																			 518 : if_nz r0.w
																			 519 : mov o1.xyz, l (0,0,1.000000,0)
																			 520 : else
																			 521:   lt r0.w, l (0.000000), cb0[36].x
																			 522 : movc r6.xyz, r0.wwww, v3.xyzx, v0.xyzx
																			 523 : mov r6.w, l (1.000000)
																			 524 : dp4 r2.x, r2.xyzw, r6.xyzw
																			 525 : dp4 r2.y, r5.xyzw, r6.xyzw
																			 526 : dp4 r2.z, r1.xyzw, r6.xyzw
																			 527 : add r1.xyz, r2.xyzx, cb1[40].xyzx
																			 528 : add r2.xyz, -r1.xyzx, cb0[3].xyzx
																			 529 : dp3 r0.w, r2.xyzx, r2.xyzx
																			 530 : sqrt r0.w, r0.w
																			 531 : div r0.w, r0.w, cb2[6].w
																			 532 : mul r1.w, r0.w, r0.w
																			 533 : mul r0.w, r0.w, r1.w
																			 534 : dp3 r2.x, r8.xzwx, r1.xyzx
																			 535 : dp3 r2.y, r9.ywzy, r1.xyzx
																			 536 : mad r1.xy, cb1[68].xxxx, cb2[1].yyyy, r2.xyxx
																			 537 : mul r1.xy, r1.xyxx, cb2[1].xxxx
																			 538 : round_ni r1.zw, r1.xxxy
																			 539 : frc r1.xy, r1.xyxx
																			 540 : mul r5.xyzw, r1.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 541 : ge r5.xyzw, r5.xyzw, -r5.zwzw
																			 542 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 543 : mul r2.zw, r1.zzzw, r5.zzzw
																			 544 : frc r2.zw, r2.zzzw
																			 545 : mul r2.zw, r2.zzzw, r5.xxxy
																			 546 : mad r3.x, r2.z, l (34.000000), l (1.000000)
																			 547 : mul r2.z, r2.z, r3.x
																			 548 : mul r3.x, r2.z, l (289.000000)
																			 549 : ge r3.x, r3.x, -r3.x
																			 550 : movc r4.yz, r3.xxxx, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 551 : mul r2.z, r2.z, r4.z
																			 552 : frc r2.z, r2.z
																			 553 : mad r2.z, r4.y, r2.z, r2.w
																			 554 : mad r2.w, r2.z, l (34.000000), l (1.000000)
																			 555 : mul r2.z, r2.z, r2.w
																			 556 : mul r2.w, r2.z, l (289.000000)
																			 557 : ge r2.w, r2.w, -r2.w
																			 558 : movc r4.yz, r2.wwww, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 559 : mul r2.z, r2.z, r4.z
																			 560 : frc r2.z, r2.z
																			 561 : mul r2.z, r2.z, r4.y
																			 562 : mul r2.z, r2.z, l (0.024390)
																			 563 : frc r2.z, r2.z
																			 564 : mad r2.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																			 565 : round_ni r2.w, r2.w
																			 566 : add r5.x, -r2.w, r2.z
																			 567 : add r5.y, | r2.z | , l (-0.500000)
																			 568 : dp2 r2.z, r5.xyxx, r5.xyxx
																			 569 : rsq r2.z, r2.z
																			 570 : mul r2.zw, r2.zzzz, r5.xxxy
																			 571 : dp2 r2.z, r2.zwzz, r1.xyxx
																			 572 : add r5.xyzw, r1.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																			 573 : mul r8.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 574 : ge r8.xyzw, r8.xyzw, -r8.xyzw
																			 575 : movc r9.xyzw, r8.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 576 : mul r4.yz, r5.xxyx, r9.zzwz
																			 577 : frc r4.yz, r4.yyzy
																			 578 : mul r4.yz, r4.yyzy, r9.xxyx
																			 579 : mad r2.w, r4.y, l (34.000000), l (1.000000)
																			 580 : mul r2.w, r4.y, r2.w
																			 581 : mul r3.x, r2.w, l (289.000000)
																			 582 : ge r3.x, r3.x, -r3.x
																			 583 : movc r4.yw, r3.xxxx, l (0,289.000000,0,0.003460), l (0,-289.000000,0,-0.003460)
																			 584 : mul r2.w, r2.w, r4.w
																			 585 : frc r2.w, r2.w
																			 586 : mad r2.w, r4.y, r2.w, r4.z
																			 587 : mad r3.x, r2.w, l (34.000000), l (1.000000)
																			 588 : mul r2.w, r2.w, r3.x
																			 589 : mul r3.x, r2.w, l (289.000000)
																			 590 : ge r3.x, r3.x, -r3.x
																			 591 : movc r4.yz, r3.xxxx, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 592 : mul r2.w, r2.w, r4.z
																			 593 : frc r2.w, r2.w
																			 594 : mul r2.w, r2.w, r4.y
																			 595 : mul r2.w, r2.w, l (0.024390)
																			 596 : frc r2.w, r2.w
																			 597 : mad r4.yz, r2.wwww, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																			 598 : round_ni r2.w, r4.z
																			 599 : add r5.x, -r2.w, r4.y
																			 600 : add r5.y, | r4.y | , l (-0.500000)
																			 601 : dp2 r2.w, r5.xyxx, r5.xyxx
																			 602 : rsq r2.w, r2.w
																			 603 : mul r4.yz, r2.wwww, r5.xxyx
																			 604 : add r9.xyzw, r1.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																			 605 : dp2 r2.w, r4.yzyy, r9.xyxx
																			 606 : movc r8.xyzw, r8.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 607 : mul r4.yz, r5.zzwz, r8.zzwz
																			 608 : frc r4.yz, r4.yyzy
																			 609 : mul r4.yz, r4.yyzy, r8.xxyx
																			 610 : mad r3.x, r4.y, l (34.000000), l (1.000000)
																			 611 : mul r3.x, r4.y, r3.x
																			 612 : mul r4.y, r3.x, l (289.000000)
																			 613 : ge r4.y, r4.y, -r4.y
																			 614 : movc r4.yw, r4.yyyy, l (0,289.000000,0,0.003460), l (0,-289.000000,0,-0.003460)
																			 615 : mul r3.x, r3.x, r4.w
																			 616 : frc r3.x, r3.x
																			 617 : mad r3.x, r4.y, r3.x, r4.z
																			 618 : mad r4.y, r3.x, l (34.000000), l (1.000000)
																			 619 : mul r3.x, r3.x, r4.y
																			 620 : mul r4.y, r3.x, l (289.000000)
																			 621 : ge r4.y, r4.y, -r4.y
																			 622 : movc r4.yz, r4.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 623 : mul r3.x, r3.x, r4.z
																			 624 : frc r3.x, r3.x
																			 625 : mul r3.x, r3.x, r4.y
																			 626 : mul r3.x, r3.x, l (0.024390)
																			 627 : frc r3.x, r3.x
																			 628 : mad r4.yz, r3.xxxx, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																			 629 : round_ni r3.x, r4.z
																			 630 : add r5.x, -r3.x, r4.y
																			 631 : add r5.y, | r4.y | , l (-0.500000)
																			 632 : dp2 r3.x, r5.xyxx, r5.xyxx
																			 633 : rsq r3.x, r3.x
																			 634 : mul r4.yz, r3.xxxx, r5.xxyx
																			 635 : dp2 r3.x, r4.yzyy, r9.zwzz
																			 636 : add r1.zw, r1.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
																			 637 : mul r5.xyzw, r1.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 638 : ge r5.xyzw, r5.xyzw, -r5.zwzw
																			 639 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 640 : mul r1.zw, r1.zzzw, r5.zzzw
																			 641 : frc r1.zw, r1.zzzw
																			 642 : mul r1.zw, r1.zzzw, r5.xxxy
																			 643 : mad r4.y, r1.z, l (34.000000), l (1.000000)
																			 644 : mul r1.z, r1.z, r4.y
																			 645 : mul r4.y, r1.z, l (289.000000)
																			 646 : ge r4.y, r4.y, -r4.y
																			 647 : movc r4.yz, r4.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 648 : mul r1.z, r1.z, r4.z
																			 649 : frc r1.z, r1.z
																			 650 : mad r1.z, r4.y, r1.z, r1.w
																			 651 : mad r1.w, r1.z, l (34.000000), l (1.000000)
																			 652 : mul r1.z, r1.z, r1.w
																			 653 : mul r1.w, r1.z, l (289.000000)
																			 654 : ge r1.w, r1.w, -r1.w
																			 655 : movc r4.yz, r1.wwww, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 656 : mul r1.z, r1.z, r4.z
																			 657 : frc r1.z, r1.z
																			 658 : mul r1.z, r1.z, r4.y
																			 659 : mul r1.z, r1.z, l (0.024390)
																			 660 : frc r1.z, r1.z
																			 661 : mad r1.zw, r1.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																			 662 : round_ni r1.w, r1.w
																			 663 : add r5.x, -r1.w, r1.z
																			 664 : add r5.y, | r1.z | , l (-0.500000)
																			 665 : dp2 r1.z, r5.xyxx, r5.xyxx
																			 666 : rsq r1.z, r1.z
																			 667 : mul r1.zw, r1.zzzz, r5.xxxy
																			 668 : add r4.yz, r1.xxyx, l (0.000000, -1.000000, -1.000000, 0.000000)
																			 669 : dp2 r1.z, r1.zwzz, r4.yzyy
																			 670 : mul r4.yz, r1.xxyx, r1.xxyx
																			 671 : mul r4.yz, r1.xxyx, r4.yyzy
																			 672 : mad r5.xy, r1.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																			 673 : mad r1.xy, r1.xyxx, r5.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
																			 674 : mul r1.xy, r1.xyxx, r4.yzyy
																			 675 : add r1.w, -r2.z, r2.w
																			 676 : mad r1.w, r1.y, r1.w, r2.z
																			 677 : add r1.z, -r3.x, r1.z
																			 678 : mad r1.y, r1.y, r1.z, r3.x
																			 679 : add r1.y, -r1.w, r1.y
																			 680 : mad r1.x, r1.x, r1.y, r1.w
																			 681 : add r1.x, r1.x, l (0.500000)
																			 682 : mul r1.yz, r2.xxyx, cb2[1].xxxx
																			 683 : round_ni r2.zw, r1.yyyz
																			 684 : mul r5.xyzw, r2.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 685 : ge r5.xyzw, r5.xyzw, -r5.zwzw
																			 686 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 687 : mul r4.yz, r2.zzwz, r5.zzwz
																			 688 : frc r4.yz, r4.yyzy
																			 689 : mul r4.yz, r4.yyzy, r5.xxyx
																			 690 : mad r1.w, r4.y, l (34.000000), l (1.000000)
																			 691 : mul r1.w, r4.y, r1.w
																			 692 : mul r3.x, r1.w, l (289.000000)
																			 693 : ge r3.x, r3.x, -r3.x
																			 694 : movc r4.yw, r3.xxxx, l (0,289.000000,0,0.003460), l (0,-289.000000,0,-0.003460)
																			 695 : mul r1.w, r1.w, r4.w
																			 696 : frc r1.yzw, r1.yyzw
																			 697 : mad r1.w, r4.y, r1.w, r4.z
																			 698 : mad r3.x, r1.w, l (34.000000), l (1.000000)
																			 699 : mul r1.w, r1.w, r3.x
																			 700 : mul r3.x, r1.w, l (289.000000)
																			 701 : ge r3.x, r3.x, -r3.x
																			 702 : movc r4.yz, r3.xxxx, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 703 : mul r1.w, r1.w, r4.z
																			 704 : frc r1.w, r1.w
																			 705 : mul r1.w, r1.w, r4.y
																			 706 : mul r1.w, r1.w, l (0.024390)
																			 707 : frc r1.w, r1.w
																			 708 : mad r4.yz, r1.wwww, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																			 709 : round_ni r1.w, r4.z
																			 710 : add r5.x, -r1.w, r4.y
																			 711 : add r5.y, | r4.y | , l (-0.500000)
																			 712 : dp2 r1.w, r5.xyxx, r5.xyxx
																			 713 : rsq r1.w, r1.w
																			 714 : mul r4.yz, r1.wwww, r5.xxyx
																			 715 : dp2 r1.w, r4.yzyy, r1.yzyy
																			 716 : add r5.xyzw, r2.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																			 717 : mul r8.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 718 : ge r8.xyzw, r8.xyzw, -r8.xyzw
																			 719 : movc r9.xyzw, r8.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 720 : mul r4.yz, r5.xxyx, r9.zzwz
																			 721 : frc r4.yz, r4.yyzy
																			 722 : mul r4.yz, r4.yyzy, r9.xxyx
																			 723 : mad r3.x, r4.y, l (34.000000), l (1.000000)
																			 724 : mul r3.x, r4.y, r3.x
																			 725 : mul r4.y, r3.x, l (289.000000)
																			 726 : ge r4.y, r4.y, -r4.y
																			 727 : movc r4.yw, r4.yyyy, l (0,289.000000,0,0.003460), l (0,-289.000000,0,-0.003460)
																			 728 : mul r3.x, r3.x, r4.w
																			 729 : frc r3.x, r3.x
																			 730 : mad r3.x, r4.y, r3.x, r4.z
																			 731 : mad r4.y, r3.x, l (34.000000), l (1.000000)
																			 732 : mul r3.x, r3.x, r4.y
																			 733 : mul r4.y, r3.x, l (289.000000)
																			 734 : ge r4.y, r4.y, -r4.y
																			 735 : movc r4.yz, r4.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 736 : mul r3.x, r3.x, r4.z
																			 737 : frc r3.x, r3.x
																			 738 : mul r3.x, r3.x, r4.y
																			 739 : mul r3.x, r3.x, l (0.024390)
																			 740 : frc r3.x, r3.x
																			 741 : mad r4.yz, r3.xxxx, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																			 742 : round_ni r3.x, r4.z
																			 743 : add r5.x, -r3.x, r4.y
																			 744 : add r5.y, | r4.y | , l (-0.500000)
																			 745 : dp2 r3.x, r5.xyxx, r5.xyxx
																			 746 : rsq r3.x, r3.x
																			 747 : mul r4.yz, r3.xxxx, r5.xxyx
																			 748 : add r9.xyzw, r1.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
																			 749 : dp2 r3.x, r4.yzyy, r9.xyxx
																			 750 : movc r8.xyzw, r8.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 751 : mul r4.yz, r5.zzwz, r8.zzwz
																			 752 : frc r4.yz, r4.yyzy
																			 753 : mul r4.yz, r4.yyzy, r8.xxyx
																			 754 : mad r4.w, r4.y, l (34.000000), l (1.000000)
																			 755 : mul r4.y, r4.y, r4.w
																			 756 : mul r4.w, r4.y, l (289.000000)
																			 757 : ge r4.w, r4.w, -r4.w
																			 758 : movc r5.xy, r4.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 759 : mul r4.y, r4.y, r5.y
																			 760 : frc r4.y, r4.y
																			 761 : mad r4.y, r5.x, r4.y, r4.z
																			 762 : mad r4.z, r4.y, l (34.000000), l (1.000000)
																			 763 : mul r4.y, r4.y, r4.z
																			 764 : mul r4.z, r4.y, l (289.000000)
																			 765 : ge r4.z, r4.z, -r4.z
																			 766 : movc r4.zw, r4.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																			 767 : mul r4.y, r4.w, r4.y
																			 768 : frc r4.y, r4.y
																			 769 : mul r4.y, r4.y, r4.z
																			 770 : mul r4.y, r4.y, l (0.024390)
																			 771 : frc r4.y, r4.y
																			 772 : mad r4.yz, r4.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																			 773 : round_ni r4.z, r4.z
																			 774 : add r5.x, -r4.z, r4.y
																			 775 : add r5.y, | r4.y | , l (-0.500000)
																			 776 : dp2 r4.y, r5.xyxx, r5.xyxx
																			 777 : rsq r4.y, r4.y
																			 778 : mul r4.yz, r4.yyyy, r5.xxyx
																			 779 : dp2 r4.y, r4.yzyy, r9.zwzz
																			 780 : add r2.zw, r2.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
																			 781 : mul r5.xyzw, r2.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 782 : ge r5.xyzw, r5.xyzw, -r5.zwzw
																			 783 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 784 : mul r2.zw, r2.zzzw, r5.zzzw
																			 785 : frc r2.zw, r2.zzzw
																			 786 : mul r2.zw, r2.zzzw, r5.xxxy
																			 787 : mad r4.z, r2.z, l (34.000000), l (1.000000)
																			 788 : mul r2.z, r2.z, r4.z
																			 789 : mul r4.z, r2.z, l (289.000000)
																			 790 : ge r4.z, r4.z, -r4.z
																			 791 : movc r4.zw, r4.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																			 792 : mul r2.z, r2.z, r4.w
																			 793 : frc r2.z, r2.z
																			 794 : mad r2.z, r4.z, r2.z, r2.w
																			 795 : mad r2.w, r2.z, l (34.000000), l (1.000000)
																			 796 : mul r2.z, r2.z, r2.w
																			 797 : mul r2.w, r2.z, l (289.000000)
																			 798 : ge r2.w, r2.w, -r2.w
																			 799 : movc r4.zw, r2.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																			 800 : mul r2.z, r2.z, r4.w
																			 801 : frc r2.z, r2.z
																			 802 : mul r2.z, r2.z, r4.z
																			 803 : mul r2.z, r2.z, l (0.024390)
																			 804 : frc r2.z, r2.z
																			 805 : mad r2.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																			 806 : round_ni r2.w, r2.w
																			 807 : add r5.x, -r2.w, r2.z
																			 808 : add r5.y, | r2.z | , l (-0.500000)
																			 809 : dp2 r2.z, r5.xyxx, r5.xyxx
																			 810 : rsq r2.z, r2.z
																			 811 : mul r2.zw, r2.zzzz, r5.xxxy
																			 812 : add r4.zw, r1.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
																			 813 : dp2 r2.z, r2.zwzz, r4.zwzz
																			 814 : mul r4.zw, r1.yyyz, r1.yyyz
																			 815 : mul r4.zw, r1.yyyz, r4.zzzw
																			 816 : mad r5.xy, r1.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																			 817 : mad r1.yz, r1.yyzy, r5.xxyx, l (0.000000, 10.000000, 10.000000, 0.000000)
																			 818 : mul r1.yz, r1.yyzy, r4.zzwz
																			 819 : add r2.w, -r1.w, r3.x
																			 820 : mad r1.w, r1.z, r2.w, r1.w
																			 821 : add r2.z, -r4.y, r2.z
																			 822 : mad r1.z, r1.z, r2.z, r4.y
																			 823 : add r1.z, -r1.w, r1.z
																			 824 : mad r1.y, r1.y, r1.z, r1.w
																			 825 : add r1.x, r1.x, r1.y
																			 826 : add r1.x, r1.x, l (0.500000)
																			 827 : mul_sat r1.x, r1.x, l (0.500000)
																			 828 : log r1.x, r1.x
																			 829 : mul r1.x, r1.x, cb2[5].z
																			 830 : exp r1.x, r1.x
																			 831 : add r1.x, r1.x, -cb2[2].x
																			 832 : mul r1.x, r3.y, r1.x
																			 833 : div r1.x, r1.x, r3.z
																			 834 : add r1.x, r1.x, cb2[2].z
																			 835 : add r1.x, | r1.x | , -cb2[5].x
																			 836 : mul_sat r1.x, r3.w, r1.x
																			 837 : mad r1.y, r1.x, l (-2.000000), l (3.000000)
																			 838 : mul r1.x, r1.x, r1.x
																			 839 : mad r1.zw, cb1[68].xxxx, cb2[6].xxxx, r2.xxxy
																			 840 : mul r1.zw, r1.zzzw, cb2[5].wwww
																			 841 : round_ni r2.xy, r1.zwzz
																			 842 : frc r1.zw, r1.zzzw
																			 843 : mul r3.xyzw, r2.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 844 : ge r3.xyzw, r3.xyzw, -r3.zwzw
																			 845 : movc r3.xyzw, r3.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 846 : mul r2.zw, r2.xxxy, r3.zzzw
																			 847 : frc r2.zw, r2.zzzw
																			 848 : mul r2.zw, r2.zzzw, r3.xxxy
																			 849 : mad r3.x, r2.z, l (34.000000), l (1.000000)
																			 850 : mul r2.z, r2.z, r3.x
																			 851 : mul r3.x, r2.z, l (289.000000)
																			 852 : ge r3.x, r3.x, -r3.x
																			 853 : movc r3.xy, r3.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 854 : mul r2.z, r2.z, r3.y
																			 855 : frc r2.z, r2.z
																			 856 : mad r2.z, r3.x, r2.z, r2.w
																			 857 : mad r2.w, r2.z, l (34.000000), l (1.000000)
																			 858 : mul r2.z, r2.z, r2.w
																			 859 : mul r2.w, r2.z, l (289.000000)
																			 860 : ge r2.w, r2.w, -r2.w
																			 861 : movc r3.xy, r2.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 862 : mul r2.z, r2.z, r3.y
																			 863 : frc r2.z, r2.z
																			 864 : mul r2.z, r2.z, r3.x
																			 865 : mul r2.z, r2.z, l (0.024390)
																			 866 : frc r2.z, r2.z
																			 867 : mad r2.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																			 868 : round_ni r2.w, r2.w
																			 869 : add r3.x, -r2.w, r2.z
																			 870 : add r3.y, | r2.z | , l (-0.500000)
																			 871 : dp2 r2.z, r3.xyxx, r3.xyxx
																			 872 : rsq r2.z, r2.z
																			 873 : mul r2.zw, r2.zzzz, r3.xxxy
																			 874 : dp2 r2.z, r2.zwzz, r1.zwzz
																			 875 : add r3.xyzw, r2.xyxy, l (0.000000, 1.000000, 1.000000, 0.000000)
																			 876 : mul r5.xyzw, r3.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 877 : ge r5.xyzw, r5.xyzw, -r5.xyzw
																			 878 : movc r8.xyzw, r5.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 879 : mul r3.xy, r3.xyxx, r8.zwzz
																			 880 : frc r3.xy, r3.xyxx
																			 881 : mul r3.xy, r3.xyxx, r8.xyxx
																			 882 : mad r2.w, r3.x, l (34.000000), l (1.000000)
																			 883 : mul r2.w, r3.x, r2.w
																			 884 : mul r3.x, r2.w, l (289.000000)
																			 885 : ge r3.x, r3.x, -r3.x
																			 886 : movc r4.yz, r3.xxxx, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 887 : mul r2.w, r2.w, r4.z
																			 888 : frc r2.w, r2.w
																			 889 : mad r2.w, r4.y, r2.w, r3.y
																			 890 : mad r3.x, r2.w, l (34.000000), l (1.000000)
																			 891 : mul r2.w, r2.w, r3.x
																			 892 : mul r3.x, r2.w, l (289.000000)
																			 893 : ge r3.x, r3.x, -r3.x
																			 894 : movc r3.xy, r3.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																			 895 : mul r2.w, r2.w, r3.y
																			 896 : frc r2.w, r2.w
																			 897 : mul r2.w, r2.w, r3.x
																			 898 : mul r2.w, r2.w, l (0.024390)
																			 899 : frc r2.w, r2.w
																			 900 : mad r3.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																			 901 : round_ni r2.w, r3.y
																			 902 : add r5.x, -r2.w, r3.x
																			 903 : add r5.y, | r3.x | , l (-0.500000)
																			 904 : dp2 r2.w, r5.xyxx, r5.xyxx
																			 905 : rsq r2.w, r2.w
																			 906 : mul r3.xy, r2.wwww, r5.xyxx
																			 907 : add r8.xyzw, r1.zwzw, l (-0.000000, -1.000000, -1.000000, -0.000000)
																			 908 : dp2 r2.w, r3.xyxx, r8.xyxx
																			 909 : movc r5.xyzw, r5.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 910 : mul r3.xy, r3.zwzz, r5.zwzz
																			 911 : frc r3.xy, r3.xyxx
																			 912 : mul r3.xy, r3.xyxx, r5.xyxx
																			 913 : mad r3.z, r3.x, l (34.000000), l (1.000000)
																			 914 : mul r3.x, r3.x, r3.z
																			 915 : mul r3.z, r3.x, l (289.000000)
																			 916 : ge r3.z, r3.z, -r3.z
																			 917 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																			 918 : mul r3.x, r3.w, r3.x
																			 919 : frc r3.x, r3.x
																			 920 : mad r3.x, r3.z, r3.x, r3.y
																			 921 : mad r3.y, r3.x, l (34.000000), l (1.000000)
																			 922 : mul r3.x, r3.x, r3.y
																			 923 : mul r3.y, r3.x, l (289.000000)
																			 924 : ge r3.y, r3.y, -r3.y
																			 925 : movc r3.yz, r3.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 926 : mul r3.x, r3.z, r3.x
																			 927 : frc r3.x, r3.x
																			 928 : mul r3.x, r3.x, r3.y
																			 929 : mul r3.x, r3.x, l (0.024390)
																			 930 : frc r3.x, r3.x
																			 931 : mad r3.xy, r3.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																			 932 : round_ni r3.y, r3.y
																			 933 : add r5.x, -r3.y, r3.x
																			 934 : add r5.y, | r3.x | , l (-0.500000)
																			 935 : dp2 r3.x, r5.xyxx, r5.xyxx
																			 936 : rsq r3.x, r3.x
																			 937 : mul r3.xy, r3.xxxx, r5.xyxx
																			 938 : dp2 r3.x, r3.xyxx, r8.zwzz
																			 939 : add r2.xy, r2.xyxx, l (1.000000, 1.000000, 0.000000, 0.000000)
																			 940 : mul r5.xyzw, r2.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																			 941 : ge r5.xyzw, r5.xyzw, -r5.zwzw
																			 942 : movc r5.xyzw, r5.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																			 943 : mul r2.xy, r2.xyxx, r5.zwzz
																			 944 : frc r2.xy, r2.xyxx
																			 945 : mul r2.xy, r2.xyxx, r5.xyxx
																			 946 : mad r3.y, r2.x, l (34.000000), l (1.000000)
																			 947 : mul r2.x, r2.x, r3.y
																			 948 : mul r3.y, r2.x, l (289.000000)
																			 949 : ge r3.y, r3.y, -r3.y
																			 950 : movc r3.yz, r3.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 951 : mul r2.x, r2.x, r3.z
																			 952 : frc r2.x, r2.x
																			 953 : mad r2.x, r3.y, r2.x, r2.y
																			 954 : mad r2.y, r2.x, l (34.000000), l (1.000000)
																			 955 : mul r2.x, r2.x, r2.y
																			 956 : mul r2.y, r2.x, l (289.000000)
																			 957 : ge r2.y, r2.y, -r2.y
																			 958 : movc r3.yz, r2.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																			 959 : mul r2.x, r2.x, r3.z
																			 960 : frc r2.x, r2.x
																			 961 : mul r2.x, r2.x, r3.y
																			 962 : mul r2.x, r2.x, l (0.024390)
																			 963 : frc r2.x, r2.x
																			 964 : mad r2.xy, r2.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																			 965 : round_ni r2.y, r2.y
																			 966 : add r5.x, -r2.y, r2.x
																			 967 : add r5.y, | r2.x | , l (-0.500000)
																			 968 : dp2 r2.x, r5.xyxx, r5.xyxx
																			 969 : rsq r2.x, r2.x
																			 970 : mul r2.xy, r2.xxxx, r5.xyxx
																			 971 : add r3.yz, r1.zzwz, l (0.000000, -1.000000, -1.000000, 0.000000)
																			 972 : dp2 r2.x, r2.xyxx, r3.yzyy
																			 973 : mul r3.yz, r1.zzwz, r1.zzwz
																			 974 : mul r3.yz, r1.zzwz, r3.yyzy
																			 975 : mad r4.yz, r1.zzwz, l (0.000000, 6.000000, 6.000000, 0.000000), l (0.000000, -15.000000, -15.000000, 0.000000)
																			 976 : mad r1.zw, r1.zzzw, r4.yyyz, l (0.000000, 0.000000, 10.000000, 10.000000)
																			 977 : mul r1.zw, r1.zzzw, r3.yyyz
																			 978 : add r2.y, -r2.z, r2.w
																			 979 : mad r2.y, r1.w, r2.y, r2.z
																			 980 : add r2.x, -r3.x, r2.x
																			 981 : mad r1.w, r1.w, r2.x, r3.x
																			 982 : add r1.w, -r2.y, r1.w
																			 983 : mad r1.z, r1.z, r1.w, r2.y
																			 984 : add r1.z, r1.z, l (0.500000)
																			 985 : mul r1.z, r1.z, cb2[6].y
																			 986 : mad r1.x, r1.y, r1.x, r1.z
																			 987 : div r1.x, r1.x, r4.x
																			 988 : mul r1.xyz, r1.xxxx, v1.xyzx
																			 989 : mad r1.xyz, r1.xyzx, cb2[1].zzzz, r6.xyzx
																			 990 : mad r0.xyz, r0.xyzx, r0.wwww, r1.xyzx
																			 991 : add r1.xyw, cb0[31].xyxz, -cb1[40].xyxz
																			 992 : mov r2.x, cb0[28].x
																			 993 : mov r2.y, cb0[29].x
																			 994 : mov r2.z, cb0[30].x
																			 995 : mov r2.w, r1.x
																			 996 : mov r0.w, l (1.000000)
																			 997 : dp4 r2.x, r2.xyzw, r0.xyzw
																			 998 : mov r3.x, cb0[28].y
																			 999 : mov r3.y, cb0[29].y
																			1000 : mov r3.z, cb0[30].y
																			1001 : mov r3.w, r1.y
																			1002 : dp4 r2.y, r3.xyzw, r0.xyzw
																			1003 : mov r1.x, cb0[28].z
																			1004 : mov r1.y, cb0[29].z
																			1005 : mov r1.z, cb0[30].z
																			1006 : dp4 r0.x, r1.xyzw, r0.xyzw
																			1007 : mul r0.yzw, r2.yyyy, cb1[33].xxyw
																			1008 : mad r0.yzw, cb1[32].xxyw, r2.xxxx, r0.yyzw
																			1009 : mad r0.xyz, cb1[34].xywx, r0.xxxx, r0.yzwy
																			1010 : add o1.xyz, r0.xyzx, cb1[35].xywx
																			1011 : endif
																			1012 : mov o3.xyz, r7.xyzx
																			1013 : ret
																					  // Approximately 0 instruction slots used


																					  -- Hardware tier variant : Tier 1
																					  --Fragment shader for "d3d11" :
																					  // Stats: 5 math, 1 temp registers
																					  Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
																						Vector4 unity_MotionVectorsParams at 576
																					  }

																					  Shader Disassembly :
																					  //
																					  // Generated by Microsoft (R) D3D Shader Disassembler
																					  //
																					  //
																					  // Input signature:
																					  //
																					  // Name                 Index   Mask Register SysValue  Format   Used
																					  // -------------------- ----- ------ -------- -------- ------- ------
																					  // TEXCOORD                 8   xyz         0     NONE   float   xyz 
																					  // TEXCOORD                 9   xyz         1     NONE   float   xyz 
																					  // SV_POSITION              0   xyzw        2      POS   float     z 
																					  // TEXCOORD                 0   xyz         3     NONE   float       
																					  //
																					  //
																					  // Output signature:
																					  //
																					  // Name                 Index   Mask Register SysValue  Format   Used
																					  // -------------------- ----- ------ -------- -------- ------- ------
																					  // SV_Target                0   xyzw        0   TARGET   float   xyzw
																					  // SV_Target                1   xyzw        1   TARGET   float   xyzw
																					  // SV_Target                2   x           2   TARGET   float   x   
																					  //
																							ps_5_0
																							dcl_globalFlags refactoringAllowed
																							dcl_constantbuffer CB0[37], immediateIndexed
																							dcl_input_ps linear v0.xyz
																							dcl_input_ps linear v1.xyz
																							dcl_input_ps_siv linear noperspective v2.z, position
																							dcl_output o0.xyzw
																							dcl_output o1.xyzw
																							dcl_output o2.x
																							dcl_temps 1
																						 0: div r0.xy, v0.xyxx, v0.zzzz
																						 1 : div r0.zw, v1.xxxy, v1.zzzz
																						 2 : add r0.xy, -r0.zwzz, r0.xyxx
																						 3 : mul r0.xy, r0.xyxx, l (0.500000, -0.500000, 0.000000, 0.000000)
																						 4 : eq r0.z, cb0[36].y, l (0.000000)
																						 5 : movc o0.xy, r0.zzzz, l (2.000000,0,0,0), r0.xyxx
																						 6 : mov o0.zw, l (0,0,0,0)
																						 7 : mov o1.xyzw, l (0,0,0,1.000000)
																						 8 : mov o2.x, v2.z
																						 9 : ret
																								// Approximately 0 instruction slots used


																								 }


														// Stats for Vertex shader:
														//        d3d11: 466 math
														// Stats for Fragment shader:
														//        d3d11: 483 avg math (469..498), 21 avg branch (0..42)
														Pass {
														 Name "ForwardOnly"
														 Tags { "LIGHTMODE" = "ForwardOnly" "QUEUE" = "Transparent+0" "RenderType" = "HDUnlitShader" "RenderPipeline" = "HDRenderPipeline" }
														 ZTest[_ZTestTransparent]
														 ZWrite[_ZWrite]
														 Cull[_CullMode]
														 Stencil {
														  Ref[_StencilRef]
														  WriteMask[_StencilWriteMask]
														  Pass Replace
														 }
														 Blend[_SrcBlend][_DstBlend],[_AlphaSrcBlend][_AlphaDstBlend]
																								//////////////////////////////////
																								//                              //
																								//      Compiled programs       //
																								//                              //
																								//////////////////////////////////
																							  //////////////////////////////////////////////////////
																							  Global Keywords : <none>
																							  Local Keywords : <none>
																							  --Hardware tier variant : Tier 1
																							  --Vertex shader for "d3d11" :
																								// Stats: 466 math, 9 temp registers
																								Uses vertex data channel "Vertex"
																								Uses vertex data channel "Normal"
																								Uses vertex data channel "Tangent"

																								Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
																								  Matrix4x4 unity_ObjectToWorld at 0
																								  Matrix4x4 unity_WorldToObject at 64
																								}
																								Constant Buffer "UnityGlobal" (7216 bytes) on slot 1 {
																								  Matrix4x4 _ViewProjMatrix at 256
																								  Vector3 _WorldSpaceCameraPos at 640
																								  Vector4 _TimeParameters at 1072
																								}
																								Constant Buffer "UnityPerMaterial" (304 bytes) on slot 2 {
																								  Vector4 Vector4_59D9B7DE at 0
																								  Float Vector1_C24F477F at 16
																								  Float Vector1_3F53ED5D at 20
																								  Float Vector1_34A2131D at 24
																								  Vector4 Vector4_BD02EA1F at 32
																								  Float Vector1_B73C588D at 80
																								  Float Vector1_157C4927 at 84
																								  Float Vector1_31818DD2 at 88
																								  Float Vector1_2E449449 at 92
																								  Float Vector1_1100DBB4 at 96
																								  Float Vector1_745E6F83 at 100
																								  Float Vector1_835232BE at 108
																								}

																								Shader Disassembly :
																								//
																								// Generated by Microsoft (R) D3D Shader Disassembler
																								//
																								//
																								// Input signature:
																								//
																								// Name                 Index   Mask Register SysValue  Format   Used
																								// -------------------- ----- ------ -------- -------- ------- ------
																								// POSITION                 0   xyz         0     NONE   float   xyz 
																								// NORMAL                   0   xyz         1     NONE   float   xyz 
																								// TANGENT                  0   xyzw        2     NONE   float   xyzw
																								//
																								//
																								// Output signature:
																								//
																								// Name                 Index   Mask Register SysValue  Format   Used
																								// -------------------- ----- ------ -------- -------- ------- ------
																								// SV_POSITION              0   xyzw        0      POS   float   xyzw
																								// TEXCOORD                 0   xyz         1     NONE   float   xyz 
																								// TEXCOORD                 1   xyz         2     NONE   float   xyz 
																								// TEXCOORD                 2   xyzw        3     NONE   float   xyzw
																								//
																									  vs_5_0
																									  dcl_globalFlags refactoringAllowed
																									  dcl_constantbuffer CB0[7], immediateIndexed
																									  dcl_constantbuffer CB1[68], immediateIndexed
																									  dcl_constantbuffer CB2[7], immediateIndexed
																									  dcl_input v0.xyz
																									  dcl_input v1.xyz
																									  dcl_input v2.xyzw
																									  dcl_output_siv o0.xyzw, position
																									  dcl_output o1.xyz
																									  dcl_output o2.xyz
																									  dcl_output o3.xyzw
																									  dcl_temps 9
																								   0: mov r0.x, cb0[0].x
																								   1 : mov r0.y, cb0[1].x
																								   2 : mov r0.z, cb0[2].x
																								   3 : add r1.xyw, cb0[3].xyxz, -cb1[40].xyxz
																								   4 : mov r0.w, r1.x
																								   5 : mov r2.xyz, v0.xyzx
																								   6 : mov r2.w, l (1.000000)
																								   7 : dp4 r3.x, r0.xyzw, r2.xyzw
																								   8 : mov r4.w, r1.y
																								   9 : mov r4.x, cb0[0].y
																								  10 : mov r4.y, cb0[1].y
																								  11 : mov r4.z, cb0[2].y
																								  12 : dp4 r3.y, r4.xyzw, r2.xyzw
																								  13 : mov r1.x, cb0[0].z
																								  14 : mov r1.y, cb0[1].z
																								  15 : mov r1.z, cb0[2].z
																								  16 : dp4 r3.z, r1.xyzw, r2.xyzw
																								  17 : add r2.xyz, r3.xyzx, cb1[40].xyzx
																								  18 : mul r2.w, cb2[0].w, l (0.017453)
																								  19 : sincos r3.x, r5.x, r2.w
																								  20 : add r2.w, -r5.x, l (1.000000)
																								  21 : dp3 r3.y, cb2[0].xyzx, cb2[0].xyzx
																								  22 : rsq r3.y, r3.y
																								  23 : mul r3.yzw, r3.yyyy, cb2[0].zzyx
																								  24 : mul r6.xyzw, r2.wwww, r3.wwyz
																								  25 : mul r5.yzw, r3.xxxx, r3.yyzw
																								  26 : mad r7.xy, r6.xwxx, r3.wzww, r5.xxxx
																								  27 : mad r7.z, r6.y, r3.z, -r5.y
																								  28 : mad r8.xy, r6.zyzz, r3.wzww, r5.zyzz
																								  29 : mad r8.z, r6.w, r3.y, -r5.w
																								  30 : mov r7.w, r8.x
																								  31 : dp3 r3.x, r7.xzwx, r2.xyzx
																								  32 : mov r8.w, r7.y
																								  33 : dp3 r3.y, r8.ywzy, r2.xyzx
																								  34 : add r2.xyz, -r2.xyzx, cb0[3].xyzx
																								  35 : dp3 r2.x, r2.xyzx, r2.xyzx
																								  36 : sqrt r2.x, r2.x
																								  37 : div r2.x, r2.x, cb2[6].w
																								  38 : mad r2.yz, cb1[67].xxxx, cb2[1].yyyy, r3.xxyx
																								  39 : mul r2.yz, r2.yyzy, cb2[1].xxxx
																								  40 : round_ni r3.zw, r2.yyyz
																								  41 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
																								  42 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																								  43 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																								  44 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								  45 : mul r5.xy, r5.xyxx, r6.zwzz
																								  46 : frc r5.xy, r5.xyxx
																								  47 : mul r5.xy, r5.xyxx, r6.xyxx
																								  48 : mad r2.w, r5.x, l (34.000000), l (1.000000)
																								  49 : mul r2.w, r5.x, r2.w
																								  50 : mul r5.x, r2.w, l (289.000000)
																								  51 : ge r5.x, r5.x, -r5.x
																								  52 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
																								  53 : mul r2.w, r2.w, r5.z
																								  54 : frc r2.yzw, r2.yyzw
																								  55 : mad r2.w, r5.x, r2.w, r5.y
																								  56 : mad r5.x, r2.w, l (34.000000), l (1.000000)
																								  57 : mul r2.w, r2.w, r5.x
																								  58 : mul r5.x, r2.w, l (289.000000)
																								  59 : ge r5.x, r5.x, -r5.x
																								  60 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																								  61 : mul r2.w, r2.w, r5.y
																								  62 : frc r2.w, r2.w
																								  63 : mul r2.w, r2.w, r5.x
																								  64 : mul r2.w, r2.w, l (0.024390)
																								  65 : frc r2.w, r2.w
																								  66 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																								  67 : round_ni r2.w, r5.y
																								  68 : add r6.x, -r2.w, r5.x
																								  69 : add r6.y, | r5.x | , l (-0.500000)
																								  70 : dp2 r2.w, r6.xyxx, r6.xyxx
																								  71 : rsq r2.w, r2.w
																								  72 : mul r5.xy, r2.wwww, r6.xyxx
																								  73 : add r5.zw, r2.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
																								  74 : dp2 r2.w, r5.xyxx, r5.zwzz
																								  75 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																								  76 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																								  77 : ge r6.xyzw, r6.xyzw, -r6.xyzw
																								  78 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								  79 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								  80 : mul r5.zw, r5.zzzw, r7.zzzw
																								  81 : mul r5.xy, r5.xyxx, r6.zwzz
																								  82 : frc r5.xyzw, r5.xyzw
																								  83 : mul r5.xy, r5.xyxx, r6.xyxx
																								  84 : mul r5.zw, r5.zzzw, r7.xxxy
																								  85 : mad r6.x, r5.z, l (34.000000), l (1.000000)
																								  86 : mul r5.z, r5.z, r6.x
																								  87 : mul r6.x, r5.z, l (289.000000)
																								  88 : ge r6.x, r6.x, -r6.x
																								  89 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																								  90 : mul r5.z, r5.z, r6.y
																								  91 : frc r5.z, r5.z
																								  92 : mad r5.z, r6.x, r5.z, r5.w
																								  93 : mad r5.w, r5.z, l (34.000000), l (1.000000)
																								  94 : mul r5.z, r5.z, r5.w
																								  95 : mul r5.w, r5.z, l (289.000000)
																								  96 : ge r5.w, r5.w, -r5.w
																								  97 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																								  98 : mul r5.z, r5.z, r6.y
																								  99 : frc r5.z, r5.z
																								 100 : mul r5.z, r5.z, r6.x
																								 101 : mul r5.z, r5.z, l (0.024390)
																								 102 : frc r5.z, r5.z
																								 103 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																								 104 : round_ni r5.w, r5.w
																								 105 : add r6.x, -r5.w, r5.z
																								 106 : add r6.y, | r5.z | , l (-0.500000)
																								 107 : dp2 r5.z, r6.xyxx, r6.xyxx
																								 108 : rsq r5.z, r5.z
																								 109 : mul r5.zw, r5.zzzz, r6.xxxy
																								 110 : add r6.xyzw, r2.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
																								 111 : dp2 r5.z, r5.zwzz, r6.zwzz
																								 112 : add r2.w, r2.w, -r5.z
																								 113 : mul r6.zw, r2.yyyz, r2.yyyz
																								 114 : mul r6.zw, r2.yyyz, r6.zzzw
																								 115 : mad r7.xy, r2.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																								 116 : mad r7.xy, r2.yzyy, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
																								 117 : mul r6.zw, r6.zzzw, r7.xxxy
																								 118 : mad r2.w, r6.w, r2.w, r5.z
																								 119 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																								 120 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																								 121 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								 122 : mul r3.zw, r3.zzzw, r7.zzzw
																								 123 : frc r3.zw, r3.zzzw
																								 124 : mul r3.zw, r3.zzzw, r7.xxxy
																								 125 : mad r5.z, r3.z, l (34.000000), l (1.000000)
																								 126 : mul r3.z, r3.z, r5.z
																								 127 : mul r5.z, r3.z, l (289.000000)
																								 128 : ge r5.z, r5.z, -r5.z
																								 129 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 130 : mul r3.z, r3.z, r5.w
																								 131 : frc r3.z, r3.z
																								 132 : mad r3.z, r5.z, r3.z, r3.w
																								 133 : mad r3.w, r3.z, l (34.000000), l (1.000000)
																								 134 : mul r3.z, r3.z, r3.w
																								 135 : mul r3.w, r3.z, l (289.000000)
																								 136 : ge r3.w, r3.w, -r3.w
																								 137 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 138 : mul r3.z, r3.z, r5.w
																								 139 : frc r3.z, r3.z
																								 140 : mul r3.z, r3.z, r5.z
																								 141 : mul r3.z, r3.z, l (0.024390)
																								 142 : frc r3.z, r3.z
																								 143 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																								 144 : round_ni r3.w, r3.w
																								 145 : add r7.x, -r3.w, r3.z
																								 146 : add r7.y, | r3.z | , l (-0.500000)
																								 147 : dp2 r3.z, r7.xyxx, r7.xyxx
																								 148 : rsq r3.z, r3.z
																								 149 : mul r3.zw, r3.zzzz, r7.xxxy
																								 150 : dp2 r2.y, r3.zwzz, r2.yzyy
																								 151 : mad r2.z, r5.x, l (34.000000), l (1.000000)
																								 152 : mul r2.z, r5.x, r2.z
																								 153 : mul r3.z, r2.z, l (289.000000)
																								 154 : ge r3.z, r3.z, -r3.z
																								 155 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 156 : mul r2.z, r2.z, r3.w
																								 157 : frc r2.z, r2.z
																								 158 : mad r2.z, r3.z, r2.z, r5.y
																								 159 : mad r3.z, r2.z, l (34.000000), l (1.000000)
																								 160 : mul r2.z, r2.z, r3.z
																								 161 : mul r3.z, r2.z, l (289.000000)
																								 162 : ge r3.z, r3.z, -r3.z
																								 163 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 164 : mul r2.z, r2.z, r3.w
																								 165 : frc r2.z, r2.z
																								 166 : mul r2.z, r2.z, r3.z
																								 167 : mul r2.z, r2.z, l (0.024390)
																								 168 : frc r2.z, r2.z
																								 169 : mad r3.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																								 170 : round_ni r2.z, r3.w
																								 171 : add r5.x, -r2.z, r3.z
																								 172 : add r5.y, | r3.z | , l (-0.500000)
																								 173 : dp2 r2.z, r5.xyxx, r5.xyxx
																								 174 : rsq r2.z, r2.z
																								 175 : mul r3.zw, r2.zzzz, r5.xxxy
																								 176 : dp2 r2.z, r3.zwzz, r6.xyxx
																								 177 : add r2.z, -r2.y, r2.z
																								 178 : mad r2.y, r6.w, r2.z, r2.y
																								 179 : add r2.z, -r2.y, r2.w
																								 180 : mad r2.y, r6.z, r2.z, r2.y
																								 181 : add r2.y, r2.y, l (0.500000)
																								 182 : mul r2.zw, r3.xxxy, cb2[1].xxxx
																								 183 : mad r3.xy, cb1[67].xxxx, cb2[6].xxxx, r3.xyxx
																								 184 : mul r3.xy, r3.xyxx, cb2[5].wwww
																								 185 : round_ni r3.zw, r2.zzzw
																								 186 : frc r2.zw, r2.zzzw
																								 187 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
																								 188 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																								 189 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																								 190 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								 191 : mul r5.xy, r5.xyxx, r6.zwzz
																								 192 : frc r5.xy, r5.xyxx
																								 193 : mul r5.xy, r5.xyxx, r6.xyxx
																								 194 : mad r5.z, r5.x, l (34.000000), l (1.000000)
																								 195 : mul r5.x, r5.x, r5.z
																								 196 : mul r5.z, r5.x, l (289.000000)
																								 197 : ge r5.z, r5.z, -r5.z
																								 198 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 199 : mul r5.x, r5.w, r5.x
																								 200 : frc r5.x, r5.x
																								 201 : mad r5.x, r5.z, r5.x, r5.y
																								 202 : mad r5.y, r5.x, l (34.000000), l (1.000000)
																								 203 : mul r5.x, r5.x, r5.y
																								 204 : mul r5.y, r5.x, l (289.000000)
																								 205 : ge r5.y, r5.y, -r5.y
																								 206 : movc r5.yz, r5.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																								 207 : mul r5.x, r5.z, r5.x
																								 208 : frc r5.x, r5.x
																								 209 : mul r5.x, r5.x, r5.y
																								 210 : mul r5.x, r5.x, l (0.024390)
																								 211 : frc r5.x, r5.x
																								 212 : mad r5.xy, r5.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																								 213 : round_ni r5.y, r5.y
																								 214 : add r6.x, -r5.y, r5.x
																								 215 : add r6.y, | r5.x | , l (-0.500000)
																								 216 : dp2 r5.x, r6.xyxx, r6.xyxx
																								 217 : rsq r5.x, r5.x
																								 218 : mul r5.xy, r5.xxxx, r6.xyxx
																								 219 : add r5.zw, r2.zzzw, l (0.000000, 0.000000, -1.000000, -1.000000)
																								 220 : dp2 r5.x, r5.xyxx, r5.zwzz
																								 221 : add r6.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																								 222 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																								 223 : ge r7.xyzw, r7.xyzw, -r7.xyzw
																								 224 : movc r8.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								 225 : movc r7.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								 226 : mul r5.yz, r6.zzwz, r8.zzwz
																								 227 : mul r6.xy, r6.xyxx, r7.zwzz
																								 228 : frc r6.xy, r6.xyxx
																								 229 : mul r6.xy, r6.xyxx, r7.xyxx
																								 230 : frc r5.yz, r5.yyzy
																								 231 : mul r5.yz, r5.yyzy, r8.xxyx
																								 232 : mad r5.w, r5.y, l (34.000000), l (1.000000)
																								 233 : mul r5.y, r5.y, r5.w
																								 234 : mul r5.w, r5.y, l (289.000000)
																								 235 : ge r5.w, r5.w, -r5.w
																								 236 : movc r6.zw, r5.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 237 : mul r5.y, r5.y, r6.w
																								 238 : frc r5.y, r5.y
																								 239 : mad r5.y, r6.z, r5.y, r5.z
																								 240 : mad r5.z, r5.y, l (34.000000), l (1.000000)
																								 241 : mul r5.y, r5.y, r5.z
																								 242 : mul r5.z, r5.y, l (289.000000)
																								 243 : ge r5.z, r5.z, -r5.z
																								 244 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 245 : mul r5.y, r5.w, r5.y
																								 246 : frc r5.y, r5.y
																								 247 : mul r5.y, r5.y, r5.z
																								 248 : mul r5.y, r5.y, l (0.024390)
																								 249 : frc r5.y, r5.y
																								 250 : mad r5.yz, r5.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																								 251 : round_ni r5.z, r5.z
																								 252 : add r7.x, -r5.z, r5.y
																								 253 : add r7.y, | r5.y | , l (-0.500000)
																								 254 : dp2 r5.y, r7.xyxx, r7.xyxx
																								 255 : rsq r5.y, r5.y
																								 256 : mul r5.yz, r5.yyyy, r7.xxyx
																								 257 : add r7.xyzw, r2.zwzw, l (-0.000000, -1.000000, -1.000000, -0.000000)
																								 258 : dp2 r5.y, r5.yzyy, r7.zwzz
																								 259 : add r5.x, -r5.y, r5.x
																								 260 : mul r5.zw, r2.zzzw, r2.zzzw
																								 261 : mul r5.zw, r2.zzzw, r5.zzzw
																								 262 : mad r6.zw, r2.zzzw, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
																								 263 : mad r6.zw, r2.zzzw, r6.zzzw, l (0.000000, 0.000000, 10.000000, 10.000000)
																								 264 : mul r5.zw, r5.zzzw, r6.zzzw
																								 265 : mad r5.x, r5.w, r5.x, r5.y
																								 266 : mul r8.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																								 267 : ge r8.xyzw, r8.xyzw, -r8.zwzw
																								 268 : movc r8.xyzw, r8.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								 269 : mul r3.zw, r3.zzzw, r8.zzzw
																								 270 : frc r3.zw, r3.zzzw
																								 271 : mul r3.zw, r3.zzzw, r8.xxxy
																								 272 : mad r5.y, r3.z, l (34.000000), l (1.000000)
																								 273 : mul r3.z, r3.z, r5.y
																								 274 : mul r5.y, r3.z, l (289.000000)
																								 275 : ge r5.y, r5.y, -r5.y
																								 276 : movc r6.zw, r5.yyyy, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 277 : mul r3.z, r3.z, r6.w
																								 278 : frc r3.z, r3.z
																								 279 : mad r3.z, r6.z, r3.z, r3.w
																								 280 : mad r3.w, r3.z, l (34.000000), l (1.000000)
																								 281 : mul r3.z, r3.z, r3.w
																								 282 : mul r3.w, r3.z, l (289.000000)
																								 283 : ge r3.w, r3.w, -r3.w
																								 284 : movc r6.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 285 : mul r3.z, r3.z, r6.w
																								 286 : frc r3.z, r3.z
																								 287 : mul r3.z, r3.z, r6.z
																								 288 : mul r3.z, r3.z, l (0.024390)
																								 289 : frc r3.z, r3.z
																								 290 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																								 291 : round_ni r3.w, r3.w
																								 292 : add r8.x, -r3.w, r3.z
																								 293 : add r8.y, | r3.z | , l (-0.500000)
																								 294 : dp2 r3.z, r8.xyxx, r8.xyxx
																								 295 : rsq r3.z, r3.z
																								 296 : mul r3.zw, r3.zzzz, r8.xxxy
																								 297 : dp2 r2.z, r3.zwzz, r2.zwzz
																								 298 : mad r2.w, r6.x, l (34.000000), l (1.000000)
																								 299 : mul r2.w, r6.x, r2.w
																								 300 : mul r3.z, r2.w, l (289.000000)
																								 301 : ge r3.z, r3.z, -r3.z
																								 302 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 303 : mul r2.w, r2.w, r3.w
																								 304 : frc r2.w, r2.w
																								 305 : mad r2.w, r3.z, r2.w, r6.y
																								 306 : mad r3.z, r2.w, l (34.000000), l (1.000000)
																								 307 : mul r2.w, r2.w, r3.z
																								 308 : mul r3.z, r2.w, l (289.000000)
																								 309 : ge r3.z, r3.z, -r3.z
																								 310 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 311 : mul r2.w, r2.w, r3.w
																								 312 : frc r2.w, r2.w
																								 313 : mul r2.w, r2.w, r3.z
																								 314 : mul r2.w, r2.w, l (0.024390)
																								 315 : frc r2.w, r2.w
																								 316 : mad r3.zw, r2.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																								 317 : round_ni r2.w, r3.w
																								 318 : add r6.x, -r2.w, r3.z
																								 319 : add r6.y, | r3.z | , l (-0.500000)
																								 320 : dp2 r2.w, r6.xyxx, r6.xyxx
																								 321 : rsq r2.w, r2.w
																								 322 : mul r3.zw, r2.wwww, r6.xxxy
																								 323 : dp2 r2.w, r3.zwzz, r7.xyxx
																								 324 : add r2.w, -r2.z, r2.w
																								 325 : mad r2.z, r5.w, r2.w, r2.z
																								 326 : add r2.w, -r2.z, r5.x
																								 327 : mad r2.z, r5.z, r2.w, r2.z
																								 328 : add r2.y, r2.y, r2.z
																								 329 : add r2.y, r2.y, l (0.500000)
																								 330 : mul_sat r2.y, r2.y, l (0.500000)
																								 331 : log r2.y, r2.y
																								 332 : mul r2.y, r2.y, cb2[5].z
																								 333 : exp r2.y, r2.y
																								 334 : add r2.y, r2.y, -cb2[2].x
																								 335 : add r2.zw, -cb2[2].zzzx, cb2[2].wwwy
																								 336 : mul r2.y, r2.z, r2.y
																								 337 : div r2.y, r2.y, r2.w
																								 338 : add r2.y, r2.y, cb2[2].z
																								 339 : add r2.y, | r2.y | , -cb2[5].x
																								 340 : add r2.z, -cb2[5].x, cb2[5].y
																								 341 : div r2.z, l (1.000000, 1.000000, 1.000000, 1.000000), r2.z
																								 342 : mul_sat r2.y, r2.z, r2.y
																								 343 : mad r2.z, r2.y, l (-2.000000), l (3.000000)
																								 344 : mul r2.y, r2.y, r2.y
																								 345 : round_ni r3.zw, r3.xxxy
																								 346 : frc r3.xy, r3.xyxx
																								 347 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
																								 348 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																								 349 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																								 350 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								 351 : mul r5.xy, r5.xyxx, r6.zwzz
																								 352 : frc r5.xy, r5.xyxx
																								 353 : mul r5.xy, r5.xyxx, r6.xyxx
																								 354 : mad r2.w, r5.x, l (34.000000), l (1.000000)
																								 355 : mul r2.w, r5.x, r2.w
																								 356 : mul r5.x, r2.w, l (289.000000)
																								 357 : ge r5.x, r5.x, -r5.x
																								 358 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
																								 359 : mul r2.w, r2.w, r5.z
																								 360 : frc r2.w, r2.w
																								 361 : mad r2.w, r5.x, r2.w, r5.y
																								 362 : mad r5.x, r2.w, l (34.000000), l (1.000000)
																								 363 : mul r2.w, r2.w, r5.x
																								 364 : mul r5.x, r2.w, l (289.000000)
																								 365 : ge r5.x, r5.x, -r5.x
																								 366 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																								 367 : mul r2.w, r2.w, r5.y
																								 368 : frc r2.w, r2.w
																								 369 : mul r2.w, r2.w, r5.x
																								 370 : mul r2.w, r2.w, l (0.024390)
																								 371 : frc r2.w, r2.w
																								 372 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																								 373 : round_ni r2.w, r5.y
																								 374 : add r6.x, -r2.w, r5.x
																								 375 : add r6.y, | r5.x | , l (-0.500000)
																								 376 : dp2 r2.w, r6.xyxx, r6.xyxx
																								 377 : rsq r2.w, r2.w
																								 378 : mul r5.xy, r2.wwww, r6.xyxx
																								 379 : add r5.zw, r3.xxxy, l (0.000000, 0.000000, -1.000000, -1.000000)
																								 380 : dp2 r2.w, r5.xyxx, r5.zwzz
																								 381 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																								 382 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																								 383 : ge r6.xyzw, r6.xyzw, -r6.xyzw
																								 384 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								 385 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								 386 : mul r5.zw, r5.zzzw, r7.zzzw
																								 387 : mul r5.xy, r5.xyxx, r6.zwzz
																								 388 : frc r5.xyzw, r5.xyzw
																								 389 : mul r5.xy, r5.xyxx, r6.xyxx
																								 390 : mul r5.zw, r5.zzzw, r7.xxxy
																								 391 : mad r6.x, r5.z, l (34.000000), l (1.000000)
																								 392 : mul r5.z, r5.z, r6.x
																								 393 : mul r6.x, r5.z, l (289.000000)
																								 394 : ge r6.x, r6.x, -r6.x
																								 395 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																								 396 : mul r5.z, r5.z, r6.y
																								 397 : frc r5.z, r5.z
																								 398 : mad r5.z, r6.x, r5.z, r5.w
																								 399 : mad r5.w, r5.z, l (34.000000), l (1.000000)
																								 400 : mul r5.z, r5.z, r5.w
																								 401 : mul r5.w, r5.z, l (289.000000)
																								 402 : ge r5.w, r5.w, -r5.w
																								 403 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																								 404 : mul r5.z, r5.z, r6.y
																								 405 : frc r5.z, r5.z
																								 406 : mul r5.z, r5.z, r6.x
																								 407 : mul r5.z, r5.z, l (0.024390)
																								 408 : frc r5.z, r5.z
																								 409 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																								 410 : round_ni r5.w, r5.w
																								 411 : add r6.x, -r5.w, r5.z
																								 412 : add r6.y, | r5.z | , l (-0.500000)
																								 413 : dp2 r5.z, r6.xyxx, r6.xyxx
																								 414 : rsq r5.z, r5.z
																								 415 : mul r5.zw, r5.zzzz, r6.xxxy
																								 416 : add r6.xyzw, r3.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																								 417 : dp2 r5.z, r5.zwzz, r6.zwzz
																								 418 : add r2.w, r2.w, -r5.z
																								 419 : mul r6.zw, r3.xxxy, r3.xxxy
																								 420 : mul r6.zw, r3.xxxy, r6.zzzw
																								 421 : mad r7.xy, r3.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																								 422 : mad r7.xy, r3.xyxx, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
																								 423 : mul r6.zw, r6.zzzw, r7.xxxy
																								 424 : mad r2.w, r6.w, r2.w, r5.z
																								 425 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																								 426 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																								 427 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																								 428 : mul r3.zw, r3.zzzw, r7.zzzw
																								 429 : frc r3.zw, r3.zzzw
																								 430 : mul r3.zw, r3.zzzw, r7.xxxy
																								 431 : mad r5.z, r3.z, l (34.000000), l (1.000000)
																								 432 : mul r3.z, r3.z, r5.z
																								 433 : mul r5.z, r3.z, l (289.000000)
																								 434 : ge r5.z, r5.z, -r5.z
																								 435 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 436 : mul r3.z, r3.z, r5.w
																								 437 : frc r3.z, r3.z
																								 438 : mad r3.z, r5.z, r3.z, r3.w
																								 439 : mad r3.w, r3.z, l (34.000000), l (1.000000)
																								 440 : mul r3.z, r3.z, r3.w
																								 441 : mul r3.w, r3.z, l (289.000000)
																								 442 : ge r3.w, r3.w, -r3.w
																								 443 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 444 : mul r3.z, r3.z, r5.w
																								 445 : frc r3.z, r3.z
																								 446 : mul r3.z, r3.z, r5.z
																								 447 : mul r3.z, r3.z, l (0.024390)
																								 448 : frc r3.z, r3.z
																								 449 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																								 450 : round_ni r3.w, r3.w
																								 451 : add r7.x, -r3.w, r3.z
																								 452 : add r7.y, | r3.z | , l (-0.500000)
																								 453 : dp2 r3.z, r7.xyxx, r7.xyxx
																								 454 : rsq r3.z, r3.z
																								 455 : mul r3.zw, r3.zzzz, r7.xxxy
																								 456 : dp2 r3.x, r3.zwzz, r3.xyxx
																								 457 : mad r3.y, r5.x, l (34.000000), l (1.000000)
																								 458 : mul r3.y, r5.x, r3.y
																								 459 : mul r3.z, r3.y, l (289.000000)
																								 460 : ge r3.z, r3.z, -r3.z
																								 461 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 462 : mul r3.y, r3.w, r3.y
																								 463 : frc r3.y, r3.y
																								 464 : mad r3.y, r3.z, r3.y, r5.y
																								 465 : mad r3.z, r3.y, l (34.000000), l (1.000000)
																								 466 : mul r3.y, r3.y, r3.z
																								 467 : mul r3.z, r3.y, l (289.000000)
																								 468 : ge r3.z, r3.z, -r3.z
																								 469 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																								 470 : mul r3.y, r3.w, r3.y
																								 471 : frc r3.y, r3.y
																								 472 : mul r3.y, r3.y, r3.z
																								 473 : mul r3.y, r3.y, l (0.024390)
																								 474 : frc r3.y, r3.y
																								 475 : mad r3.yz, r3.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																								 476 : round_ni r3.z, r3.z
																								 477 : add r5.x, -r3.z, r3.y
																								 478 : add r5.y, | r3.y | , l (-0.500000)
																								 479 : dp2 r3.y, r5.xyxx, r5.xyxx
																								 480 : rsq r3.y, r3.y
																								 481 : mul r3.yz, r3.yyyy, r5.xxyx
																								 482 : dp2 r3.y, r3.yzyy, r6.xyxx
																								 483 : add r3.y, -r3.x, r3.y
																								 484 : mad r3.x, r6.w, r3.y, r3.x
																								 485 : add r2.w, r2.w, -r3.x
																								 486 : mad r2.w, r6.z, r2.w, r3.x
																								 487 : add r2.w, r2.w, l (0.500000)
																								 488 : mul r2.w, r2.w, cb2[6].y
																								 489 : mad r2.y, r2.z, r2.y, r2.w
																								 490 : add r2.z, cb2[6].y, l (1.000000)
																								 491 : div r2.y, r2.y, r2.z
																								 492 : mul r2.yzw, r2.yyyy, v1.xxyz
																								 493 : mad r2.yzw, r2.yyzw, cb2[1].zzzz, v0.xxyz
																								 494 : dp3 r3.x, v1.xyzx, cb0[4].xyzx
																								 495 : dp3 r3.y, v1.xyzx, cb0[5].xyzx
																								 496 : dp3 r3.z, v1.xyzx, cb0[6].xyzx
																								 497 : dp3 r3.w, r3.xyzx, r3.xyzx
																								 498 : max r3.w, r3.w, l (0.000000)
																								 499 : rsq r3.w, r3.w
																								 500 : mul r3.xyz, r3.wwww, r3.xyzx
																								 501 : mul r3.w, r2.x, r2.x
																								 502 : mul r2.x, r2.x, r3.w
																								 503 : mad r2.xyz, r3.xyzx, r2.xxxx, r2.yzwy
																								 504 : mov o2.xyz, r3.xyzx
																								 505 : mov r2.w, l (1.000000)
																								 506 : dp4 r3.y, r4.xyzw, r2.xyzw
																								 507 : mul r4.xyzw, r3.yyyy, cb1[17].xyzw
																								 508 : dp4 r3.x, r0.xyzw, r2.xyzw
																								 509 : dp4 r3.z, r1.xyzw, r2.xyzw
																								 510 : mad r0.xyzw, cb1[16].xyzw, r3.xxxx, r4.xyzw
																								 511 : mov o1.xyz, r3.xyzx
																								 512 : mad r0.xyzw, cb1[18].xyzw, r3.zzzz, r0.xyzw
																								 513 : add o0.xyzw, r0.xyzw, cb1[19].xyzw
																								 514 : mul r0.xyz, v2.yyyy, cb0[1].xyzx
																								 515 : mad r0.xyz, cb0[0].xyzx, v2.xxxx, r0.xyzx
																								 516 : mad r0.xyz, cb0[2].xyzx, v2.zzzz, r0.xyzx
																								 517 : dp3 r0.w, r0.xyzx, r0.xyzx
																								 518 : max r0.w, r0.w, l (0.000000)
																								 519 : rsq r0.w, r0.w
																								 520 : mul o3.xyz, r0.wwww, r0.xyzx
																								 521 : mov o3.w, v2.w
																								 522 : ret
																										  // Approximately 0 instruction slots used


																										  -- Hardware tier variant : Tier 1
																										  --Fragment shader for "d3d11" :
																										  // Stats: 469 math, 6 temp registers
																										  Set 2DArray Texture "_CameraDepthTexture" to slot 0 sampler slot - 1
																										  Set 2D Texture "_ExposureTexture" to slot 1 sampler slot - 1

																										  Constant Buffer "UnityGlobal" (7216 bytes) on slot 0 {
																											Matrix4x4 _ViewMatrix at 0
																											Matrix4x4 _InvViewMatrix at 64
																											Matrix4x4 _ProjMatrix at 128
																											Matrix4x4 _ViewProjMatrix at 256
																											Vector3 _WorldSpaceCameraPos at 640
																											Vector4 _ScreenSize at 672
																											Vector4 _ZBufferParams at 720
																											Vector4 _ProjectionParams at 736
																											Vector4 _TimeParameters at 1072
																											ScalarInt _OffScreenRendering at 7172
																											Float _ProbeExposureScale at 7188
																										  }
																										  Constant Buffer "UnityPerMaterial" (304 bytes) on slot 1 {
																											Vector4 Vector4_59D9B7DE at 0
																											Float Vector1_C24F477F at 16
																											Float Vector1_3F53ED5D at 20
																											Vector4 Vector4_BD02EA1F at 32
																											Vector4 Color_94B19C9E at 48
																											Vector4 Color_1325E6EB at 64
																											Float Vector1_B73C588D at 80
																											Float Vector1_157C4927 at 84
																											Float Vector1_31818DD2 at 88
																											Float Vector1_2E449449 at 92
																											Float Vector1_1100DBB4 at 96
																											Float Vector1_745E6F83 at 100
																											Float Vector1_8F0E7C7D at 104
																											Float Vector1_EB822D68 at 112
																											Float Vector1_B624F6DD at 116
																											Float Vector1_528AE1A1 at 120
																										  }

																										  Shader Disassembly :
																										  //
																										  // Generated by Microsoft (R) D3D Shader Disassembler
																										  //
																										  //
																										  // Input signature:
																										  //
																										  // Name                 Index   Mask Register SysValue  Format   Used
																										  // -------------------- ----- ------ -------- -------- ------- ------
																										  // SV_POSITION              0   xyzw        0      POS   float       
																										  // TEXCOORD                 0   xyz         1     NONE   float   xyz 
																										  // TEXCOORD                 1   xyz         2     NONE   float   xyz 
																										  // TEXCOORD                 2   xyzw        3     NONE   float       
																										  //
																										  //
																										  // Output signature:
																										  //
																										  // Name                 Index   Mask Register SysValue  Format   Used
																										  // -------------------- ----- ------ -------- -------- ------- ------
																										  // SV_Target                0   xyzw        0   TARGET   float   xyzw
																										  //
																												ps_5_0
																												dcl_globalFlags refactoringAllowed
																												dcl_constantbuffer CB0[450], immediateIndexed
																												dcl_constantbuffer CB1[8], immediateIndexed
																												dcl_resource_texture2darray (float,float,float,float) t0
																												dcl_resource_texture2d (float,float,float,float) t1
																												dcl_input_ps linear v1.xyz
																												dcl_input_ps linear v2.xyz
																												dcl_output o0.xyzw
																												dcl_temps 6
																											 0: add r0.xyz, v1.xyzx, cb0[40].xyzx
																											 1 : mul r0.w, cb1[0].w, l (0.017453)
																											 2 : sincos r1.x, r2.x, r0.w
																											 3 : add r0.w, -r2.x, l (1.000000)
																											 4 : dp3 r1.y, cb1[0].xyzx, cb1[0].xyzx
																											 5 : rsq r1.y, r1.y
																											 6 : mul r1.yzw, r1.yyyy, cb1[0].zzyx
																											 7 : mul r3.xyzw, r0.wwww, r1.wwyz
																											 8 : mul r2.yzw, r1.xxxx, r1.yyzw
																											 9 : mad r4.xy, r3.xwxx, r1.wzww, r2.xxxx
																											10 : mad r4.z, r3.y, r1.z, -r2.y
																											11 : mad r5.xy, r3.zyzz, r1.wzww, r2.zyzz
																											12 : mad r5.z, r3.w, r1.y, -r2.w
																											13 : mov r4.w, r5.x
																											14 : dp3 r1.x, r4.xzwx, r0.xyzx
																											15 : mov r5.w, r4.y
																											16 : dp3 r1.y, r5.ywzy, r0.xyzx
																											17 : mad r0.xy, cb0[67].xxxx, cb1[1].yyyy, r1.xyxx
																											18 : mul r0.xy, r0.xyxx, cb1[1].xxxx
																											19 : round_ni r0.zw, r0.xxxy
																											20 : frc r0.xy, r0.xyxx
																											21 : add r1.zw, r0.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
																											22 : mul r2.xyzw, r1.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																											23 : ge r2.xyzw, r2.xyzw, -r2.zwzw
																											24 : movc r2.xyzw, r2.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																											25 : mul r1.zw, r1.zzzw, r2.zzzw
																											26 : frc r1.zw, r1.zzzw
																											27 : mul r1.zw, r1.zzzw, r2.xxxy
																											28 : mad r2.x, r1.z, l (34.000000), l (1.000000)
																											29 : mul r1.z, r1.z, r2.x
																											30 : mul r2.x, r1.z, l (289.000000)
																											31 : ge r2.x, r2.x, -r2.x
																											32 : movc r2.xy, r2.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																											33 : mul r1.z, r1.z, r2.y
																											34 : frc r1.z, r1.z
																											35 : mad r1.z, r2.x, r1.z, r1.w
																											36 : mad r1.w, r1.z, l (34.000000), l (1.000000)
																											37 : mul r1.z, r1.z, r1.w
																											38 : mul r1.w, r1.z, l (289.000000)
																											39 : ge r1.w, r1.w, -r1.w
																											40 : movc r2.xy, r1.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																											41 : mul r1.z, r1.z, r2.y
																											42 : frc r1.z, r1.z
																											43 : mul r1.z, r1.z, r2.x
																											44 : mul r1.z, r1.z, l (0.024390)
																											45 : frc r1.z, r1.z
																											46 : mad r1.zw, r1.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																											47 : round_ni r1.w, r1.w
																											48 : add r2.x, -r1.w, r1.z
																											49 : add r2.y, | r1.z | , l (-0.500000)
																											50 : dp2 r1.z, r2.xyxx, r2.xyxx
																											51 : rsq r1.z, r1.z
																											52 : mul r1.zw, r1.zzzz, r2.xxxy
																											53 : add r2.xy, r0.xyxx, l (-1.000000, -1.000000, 0.000000, 0.000000)
																											54 : dp2 r1.z, r1.zwzz, r2.xyxx
																											55 : add r2.xyzw, r0.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																											56 : mul r3.xyzw, r2.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																											57 : ge r3.xyzw, r3.xyzw, -r3.xyzw
																											58 : movc r4.xyzw, r3.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																											59 : movc r3.xyzw, r3.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																											60 : mul r2.zw, r2.zzzw, r4.zzzw
																											61 : mul r2.xy, r2.xyxx, r3.zwzz
																											62 : frc r2.xyzw, r2.xyzw
																											63 : mul r2.xy, r2.xyxx, r3.xyxx
																											64 : mul r2.zw, r2.zzzw, r4.xxxy
																											65 : mad r1.w, r2.z, l (34.000000), l (1.000000)
																											66 : mul r1.w, r2.z, r1.w
																											67 : mul r2.z, r1.w, l (289.000000)
																											68 : ge r2.z, r2.z, -r2.z
																											69 : movc r3.xy, r2.zzzz, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																											70 : mul r1.w, r1.w, r3.y
																											71 : frc r1.w, r1.w
																											72 : mad r1.w, r3.x, r1.w, r2.w
																											73 : mad r2.z, r1.w, l (34.000000), l (1.000000)
																											74 : mul r1.w, r1.w, r2.z
																											75 : mul r2.z, r1.w, l (289.000000)
																											76 : ge r2.z, r2.z, -r2.z
																											77 : movc r2.zw, r2.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																											78 : mul r1.w, r1.w, r2.w
																											79 : frc r1.w, r1.w
																											80 : mul r1.w, r1.w, r2.z
																											81 : mul r1.w, r1.w, l (0.024390)
																											82 : frc r1.w, r1.w
																											83 : mad r2.zw, r1.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																											84 : round_ni r1.w, r2.w
																											85 : add r3.x, -r1.w, r2.z
																											86 : add r3.y, | r2.z | , l (-0.500000)
																											87 : dp2 r1.w, r3.xyxx, r3.xyxx
																											88 : rsq r1.w, r1.w
																											89 : mul r2.zw, r1.wwww, r3.xxxy
																											90 : add r3.xyzw, r0.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																											91 : dp2 r1.w, r2.zwzz, r3.zwzz
																											92 : add r1.z, -r1.w, r1.z
																											93 : mul r2.zw, r0.xxxy, r0.xxxy
																											94 : mul r2.zw, r0.xxxy, r2.zzzw
																											95 : mad r3.zw, r0.xxxy, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
																											96 : mad r3.zw, r0.xxxy, r3.zzzw, l (0.000000, 0.000000, 10.000000, 10.000000)
																											97 : mul r2.zw, r2.zzzw, r3.zzzw
																											98 : mad r1.z, r2.w, r1.z, r1.w
																											99 : mul r4.xyzw, r0.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																										   100 : ge r4.xyzw, r4.xyzw, -r4.zwzw
																										   101 : movc r4.xyzw, r4.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																										   102 : mul r0.zw, r0.zzzw, r4.zzzw
																										   103 : frc r0.zw, r0.zzzw
																										   104 : mul r0.zw, r0.zzzw, r4.xxxy
																										   105 : mad r1.w, r0.z, l (34.000000), l (1.000000)
																										   106 : mul r0.z, r0.z, r1.w
																										   107 : mul r1.w, r0.z, l (289.000000)
																										   108 : ge r1.w, r1.w, -r1.w
																										   109 : movc r3.zw, r1.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   110 : mul r0.z, r0.z, r3.w
																										   111 : frc r0.z, r0.z
																										   112 : mad r0.z, r3.z, r0.z, r0.w
																										   113 : mad r0.w, r0.z, l (34.000000), l (1.000000)
																										   114 : mul r0.z, r0.z, r0.w
																										   115 : mul r0.w, r0.z, l (289.000000)
																										   116 : ge r0.w, r0.w, -r0.w
																										   117 : movc r3.zw, r0.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   118 : mul r0.z, r0.z, r3.w
																										   119 : frc r0.z, r0.z
																										   120 : mul r0.z, r0.z, r3.z
																										   121 : mul r0.z, r0.z, l (0.024390)
																										   122 : frc r0.z, r0.z
																										   123 : mad r0.zw, r0.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																										   124 : round_ni r0.w, r0.w
																										   125 : add r4.x, -r0.w, r0.z
																										   126 : add r4.y, | r0.z | , l (-0.500000)
																										   127 : dp2 r0.z, r4.xyxx, r4.xyxx
																										   128 : rsq r0.z, r0.z
																										   129 : mul r0.zw, r0.zzzz, r4.xxxy
																										   130 : dp2 r0.x, r0.zwzz, r0.xyxx
																										   131 : mad r0.y, r2.x, l (34.000000), l (1.000000)
																										   132 : mul r0.y, r2.x, r0.y
																										   133 : mul r0.z, r0.y, l (289.000000)
																										   134 : ge r0.z, r0.z, -r0.z
																										   135 : movc r0.zw, r0.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   136 : mul r0.y, r0.w, r0.y
																										   137 : frc r0.y, r0.y
																										   138 : mad r0.y, r0.z, r0.y, r2.y
																										   139 : mad r0.z, r0.y, l (34.000000), l (1.000000)
																										   140 : mul r0.y, r0.y, r0.z
																										   141 : mul r0.z, r0.y, l (289.000000)
																										   142 : ge r0.z, r0.z, -r0.z
																										   143 : movc r0.zw, r0.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   144 : mul r0.y, r0.w, r0.y
																										   145 : frc r0.y, r0.y
																										   146 : mul r0.y, r0.y, r0.z
																										   147 : mul r0.y, r0.y, l (0.024390)
																										   148 : frc r0.y, r0.y
																										   149 : mad r0.yz, r0.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																										   150 : round_ni r0.z, r0.z
																										   151 : add r2.x, -r0.z, r0.y
																										   152 : add r2.y, | r0.y | , l (-0.500000)
																										   153 : dp2 r0.y, r2.xyxx, r2.xyxx
																										   154 : rsq r0.y, r0.y
																										   155 : mul r0.yz, r0.yyyy, r2.xxyx
																										   156 : dp2 r0.y, r0.yzyy, r3.xyxx
																										   157 : add r0.y, -r0.x, r0.y
																										   158 : mad r0.x, r2.w, r0.y, r0.x
																										   159 : add r0.y, -r0.x, r1.z
																										   160 : mad r0.x, r2.z, r0.y, r0.x
																										   161 : add r0.x, r0.x, l (0.500000)
																										   162 : mul r0.yz, r1.xxyx, cb1[1].xxxx
																										   163 : mad r1.xy, cb0[67].xxxx, cb1[6].xxxx, r1.xyxx
																										   164 : mul r1.xy, r1.xyxx, cb1[5].wwww
																										   165 : round_ni r1.zw, r0.yyyz
																										   166 : add r2.xy, r1.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
																										   167 : mul r3.xyzw, r2.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																										   168 : ge r3.xyzw, r3.xyzw, -r3.zwzw
																										   169 : movc r3.xyzw, r3.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																										   170 : mul r2.xy, r2.xyxx, r3.zwzz
																										   171 : frc r2.xy, r2.xyxx
																										   172 : mul r2.xy, r2.xyxx, r3.xyxx
																										   173 : mad r0.w, r2.x, l (34.000000), l (1.000000)
																										   174 : mul r0.w, r2.x, r0.w
																										   175 : mul r2.x, r0.w, l (289.000000)
																										   176 : ge r2.x, r2.x, -r2.x
																										   177 : movc r2.xz, r2.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
																										   178 : mul r0.w, r0.w, r2.z
																										   179 : frc r0.yzw, r0.yyzw
																										   180 : mad r0.w, r2.x, r0.w, r2.y
																										   181 : mad r2.x, r0.w, l (34.000000), l (1.000000)
																										   182 : mul r0.w, r0.w, r2.x
																										   183 : mul r2.x, r0.w, l (289.000000)
																										   184 : ge r2.x, r2.x, -r2.x
																										   185 : movc r2.xy, r2.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																										   186 : mul r0.w, r0.w, r2.y
																										   187 : frc r0.w, r0.w
																										   188 : mul r0.w, r0.w, r2.x
																										   189 : mul r0.w, r0.w, l (0.024390)
																										   190 : frc r0.w, r0.w
																										   191 : mad r2.xy, r0.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																										   192 : round_ni r0.w, r2.y
																										   193 : add r3.x, -r0.w, r2.x
																										   194 : add r3.y, | r2.x | , l (-0.500000)
																										   195 : dp2 r0.w, r3.xyxx, r3.xyxx
																										   196 : rsq r0.w, r0.w
																										   197 : mul r2.xy, r0.wwww, r3.xyxx
																										   198 : add r2.zw, r0.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
																										   199 : dp2 r0.w, r2.xyxx, r2.zwzz
																										   200 : add r2.xyzw, r1.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																										   201 : mul r3.xyzw, r2.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																										   202 : ge r3.xyzw, r3.xyzw, -r3.xyzw
																										   203 : movc r4.xyzw, r3.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																										   204 : movc r3.xyzw, r3.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																										   205 : mul r2.zw, r2.zzzw, r4.zzzw
																										   206 : mul r2.xy, r2.xyxx, r3.zwzz
																										   207 : frc r2.xyzw, r2.xyzw
																										   208 : mul r2.xy, r2.xyxx, r3.xyxx
																										   209 : mul r2.zw, r2.zzzw, r4.xxxy
																										   210 : mad r3.x, r2.z, l (34.000000), l (1.000000)
																										   211 : mul r2.z, r2.z, r3.x
																										   212 : mul r3.x, r2.z, l (289.000000)
																										   213 : ge r3.x, r3.x, -r3.x
																										   214 : movc r3.xy, r3.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																										   215 : mul r2.z, r2.z, r3.y
																										   216 : frc r2.z, r2.z
																										   217 : mad r2.z, r3.x, r2.z, r2.w
																										   218 : mad r2.w, r2.z, l (34.000000), l (1.000000)
																										   219 : mul r2.z, r2.z, r2.w
																										   220 : mul r2.w, r2.z, l (289.000000)
																										   221 : ge r2.w, r2.w, -r2.w
																										   222 : movc r3.xy, r2.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																										   223 : mul r2.z, r2.z, r3.y
																										   224 : frc r2.z, r2.z
																										   225 : mul r2.z, r2.z, r3.x
																										   226 : mul r2.z, r2.z, l (0.024390)
																										   227 : frc r2.z, r2.z
																										   228 : mad r2.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																										   229 : round_ni r2.w, r2.w
																										   230 : add r3.x, -r2.w, r2.z
																										   231 : add r3.y, | r2.z | , l (-0.500000)
																										   232 : dp2 r2.z, r3.xyxx, r3.xyxx
																										   233 : rsq r2.z, r2.z
																										   234 : mul r2.zw, r2.zzzz, r3.xxxy
																										   235 : add r3.xyzw, r0.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
																										   236 : dp2 r2.z, r2.zwzz, r3.zwzz
																										   237 : add r0.w, r0.w, -r2.z
																										   238 : mul r3.zw, r0.yyyz, r0.yyyz
																										   239 : mul r3.zw, r0.yyyz, r3.zzzw
																										   240 : mad r4.xy, r0.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																										   241 : mad r4.xy, r0.yzyy, r4.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
																										   242 : mul r3.zw, r3.zzzw, r4.xxxy
																										   243 : mad r0.w, r3.w, r0.w, r2.z
																										   244 : mul r4.xyzw, r1.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																										   245 : ge r4.xyzw, r4.xyzw, -r4.zwzw
																										   246 : movc r4.xyzw, r4.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																										   247 : mul r1.zw, r1.zzzw, r4.zzzw
																										   248 : frc r1.zw, r1.zzzw
																										   249 : mul r1.zw, r1.zzzw, r4.xxxy
																										   250 : mad r2.z, r1.z, l (34.000000), l (1.000000)
																										   251 : mul r1.z, r1.z, r2.z
																										   252 : mul r2.z, r1.z, l (289.000000)
																										   253 : ge r2.z, r2.z, -r2.z
																										   254 : movc r2.zw, r2.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   255 : mul r1.z, r1.z, r2.w
																										   256 : frc r1.z, r1.z
																										   257 : mad r1.z, r2.z, r1.z, r1.w
																										   258 : mad r1.w, r1.z, l (34.000000), l (1.000000)
																										   259 : mul r1.z, r1.z, r1.w
																										   260 : mul r1.w, r1.z, l (289.000000)
																										   261 : ge r1.w, r1.w, -r1.w
																										   262 : movc r2.zw, r1.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   263 : mul r1.z, r1.z, r2.w
																										   264 : frc r1.z, r1.z
																										   265 : mul r1.z, r1.z, r2.z
																										   266 : mul r1.z, r1.z, l (0.024390)
																										   267 : frc r1.z, r1.z
																										   268 : mad r1.zw, r1.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																										   269 : round_ni r1.w, r1.w
																										   270 : add r4.x, -r1.w, r1.z
																										   271 : add r4.y, | r1.z | , l (-0.500000)
																										   272 : dp2 r1.z, r4.xyxx, r4.xyxx
																										   273 : rsq r1.z, r1.z
																										   274 : mul r1.zw, r1.zzzz, r4.xxxy
																										   275 : dp2 r0.y, r1.zwzz, r0.yzyy
																										   276 : mad r0.z, r2.x, l (34.000000), l (1.000000)
																										   277 : mul r0.z, r2.x, r0.z
																										   278 : mul r1.z, r0.z, l (289.000000)
																										   279 : ge r1.z, r1.z, -r1.z
																										   280 : movc r1.zw, r1.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   281 : mul r0.z, r0.z, r1.w
																										   282 : frc r0.z, r0.z
																										   283 : mad r0.z, r1.z, r0.z, r2.y
																										   284 : mad r1.z, r0.z, l (34.000000), l (1.000000)
																										   285 : mul r0.z, r0.z, r1.z
																										   286 : mul r1.z, r0.z, l (289.000000)
																										   287 : ge r1.z, r1.z, -r1.z
																										   288 : movc r1.zw, r1.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   289 : mul r0.z, r0.z, r1.w
																										   290 : frc r0.z, r0.z
																										   291 : mul r0.z, r0.z, r1.z
																										   292 : mul r0.z, r0.z, l (0.024390)
																										   293 : frc r0.z, r0.z
																										   294 : mad r1.zw, r0.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																										   295 : round_ni r0.z, r1.w
																										   296 : add r2.x, -r0.z, r1.z
																										   297 : add r2.y, | r1.z | , l (-0.500000)
																										   298 : dp2 r0.z, r2.xyxx, r2.xyxx
																										   299 : rsq r0.z, r0.z
																										   300 : mul r1.zw, r0.zzzz, r2.xxxy
																										   301 : dp2 r0.z, r1.zwzz, r3.xyxx
																										   302 : add r0.z, -r0.y, r0.z
																										   303 : mad r0.y, r3.w, r0.z, r0.y
																										   304 : add r0.z, -r0.y, r0.w
																										   305 : mad r0.y, r3.z, r0.z, r0.y
																										   306 : add r0.x, r0.x, r0.y
																										   307 : add r0.x, r0.x, l (0.500000)
																										   308 : mul_sat r0.x, r0.x, l (0.500000)
																										   309 : log r0.x, r0.x
																										   310 : mul r0.x, r0.x, cb1[5].z
																										   311 : exp r0.x, r0.x
																										   312 : add r0.x, r0.x, -cb1[2].x
																										   313 : add r0.yz, -cb1[2].zzxz, cb1[2].wwyw
																										   314 : mul r0.x, r0.y, r0.x
																										   315 : div r0.x, r0.x, r0.z
																										   316 : add r0.x, r0.x, cb1[2].z
																										   317 : add r0.x, | r0.x | , -cb1[5].x
																										   318 : add r0.y, -cb1[5].x, cb1[5].y
																										   319 : div r0.y, l (1.000000, 1.000000, 1.000000, 1.000000), r0.y
																										   320 : mul_sat r0.x, r0.y, r0.x
																										   321 : mad r0.y, r0.x, l (-2.000000), l (3.000000)
																										   322 : mul r0.x, r0.x, r0.x
																										   323 : round_ni r0.zw, r1.xxxy
																										   324 : add r1.zw, r0.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
																										   325 : mul r2.xyzw, r1.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																										   326 : ge r2.xyzw, r2.xyzw, -r2.zwzw
																										   327 : movc r2.xyzw, r2.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																										   328 : mul r1.zw, r1.zzzw, r2.zzzw
																										   329 : frc r1.xyzw, r1.xyzw
																										   330 : mul r1.zw, r1.zzzw, r2.xxxy
																										   331 : mad r2.x, r1.z, l (34.000000), l (1.000000)
																										   332 : mul r1.z, r1.z, r2.x
																										   333 : mul r2.x, r1.z, l (289.000000)
																										   334 : ge r2.x, r2.x, -r2.x
																										   335 : movc r2.xy, r2.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																										   336 : mul r1.z, r1.z, r2.y
																										   337 : frc r1.z, r1.z
																										   338 : mad r1.z, r2.x, r1.z, r1.w
																										   339 : mad r1.w, r1.z, l (34.000000), l (1.000000)
																										   340 : mul r1.z, r1.z, r1.w
																										   341 : mul r1.w, r1.z, l (289.000000)
																										   342 : ge r1.w, r1.w, -r1.w
																										   343 : movc r2.xy, r1.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																										   344 : mul r1.z, r1.z, r2.y
																										   345 : frc r1.z, r1.z
																										   346 : mul r1.z, r1.z, r2.x
																										   347 : mul r1.z, r1.z, l (0.024390)
																										   348 : frc r1.z, r1.z
																										   349 : mad r1.zw, r1.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																										   350 : round_ni r1.w, r1.w
																										   351 : add r2.x, -r1.w, r1.z
																										   352 : add r2.y, | r1.z | , l (-0.500000)
																										   353 : dp2 r1.z, r2.xyxx, r2.xyxx
																										   354 : rsq r1.z, r1.z
																										   355 : mul r1.zw, r1.zzzz, r2.xxxy
																										   356 : add r2.xy, r1.xyxx, l (-1.000000, -1.000000, 0.000000, 0.000000)
																										   357 : dp2 r1.z, r1.zwzz, r2.xyxx
																										   358 : add r2.xyzw, r0.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																										   359 : mul r3.xyzw, r2.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																										   360 : ge r3.xyzw, r3.xyzw, -r3.xyzw
																										   361 : movc r4.xyzw, r3.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																										   362 : movc r3.xyzw, r3.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																										   363 : mul r2.zw, r2.zzzw, r4.zzzw
																										   364 : mul r2.xy, r2.xyxx, r3.zwzz
																										   365 : frc r2.xyzw, r2.xyzw
																										   366 : mul r2.xy, r2.xyxx, r3.xyxx
																										   367 : mul r2.zw, r2.zzzw, r4.xxxy
																										   368 : mad r1.w, r2.z, l (34.000000), l (1.000000)
																										   369 : mul r1.w, r2.z, r1.w
																										   370 : mul r2.z, r1.w, l (289.000000)
																										   371 : ge r2.z, r2.z, -r2.z
																										   372 : movc r3.xy, r2.zzzz, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																										   373 : mul r1.w, r1.w, r3.y
																										   374 : frc r1.w, r1.w
																										   375 : mad r1.w, r3.x, r1.w, r2.w
																										   376 : mad r2.z, r1.w, l (34.000000), l (1.000000)
																										   377 : mul r1.w, r1.w, r2.z
																										   378 : mul r2.z, r1.w, l (289.000000)
																										   379 : ge r2.z, r2.z, -r2.z
																										   380 : movc r2.zw, r2.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   381 : mul r1.w, r1.w, r2.w
																										   382 : frc r1.w, r1.w
																										   383 : mul r1.w, r1.w, r2.z
																										   384 : mul r1.w, r1.w, l (0.024390)
																										   385 : frc r1.w, r1.w
																										   386 : mad r2.zw, r1.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																										   387 : round_ni r1.w, r2.w
																										   388 : add r3.x, -r1.w, r2.z
																										   389 : add r3.y, | r2.z | , l (-0.500000)
																										   390 : dp2 r1.w, r3.xyxx, r3.xyxx
																										   391 : rsq r1.w, r1.w
																										   392 : mul r2.zw, r1.wwww, r3.xxxy
																										   393 : add r3.xyzw, r1.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																										   394 : dp2 r1.w, r2.zwzz, r3.zwzz
																										   395 : add r1.z, -r1.w, r1.z
																										   396 : mul r2.zw, r1.xxxy, r1.xxxy
																										   397 : mul r2.zw, r1.xxxy, r2.zzzw
																										   398 : mad r3.zw, r1.xxxy, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
																										   399 : mad r3.zw, r1.xxxy, r3.zzzw, l (0.000000, 0.000000, 10.000000, 10.000000)
																										   400 : mul r2.zw, r2.zzzw, r3.zzzw
																										   401 : mad r1.z, r2.w, r1.z, r1.w
																										   402 : mul r4.xyzw, r0.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																										   403 : ge r4.xyzw, r4.xyzw, -r4.zwzw
																										   404 : movc r4.xyzw, r4.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																										   405 : mul r0.zw, r0.zzzw, r4.zzzw
																										   406 : frc r0.zw, r0.zzzw
																										   407 : mul r0.zw, r0.zzzw, r4.xxxy
																										   408 : mad r1.w, r0.z, l (34.000000), l (1.000000)
																										   409 : mul r0.z, r0.z, r1.w
																										   410 : mul r1.w, r0.z, l (289.000000)
																										   411 : ge r1.w, r1.w, -r1.w
																										   412 : movc r3.zw, r1.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   413 : mul r0.z, r0.z, r3.w
																										   414 : frc r0.z, r0.z
																										   415 : mad r0.z, r3.z, r0.z, r0.w
																										   416 : mad r0.w, r0.z, l (34.000000), l (1.000000)
																										   417 : mul r0.z, r0.z, r0.w
																										   418 : mul r0.w, r0.z, l (289.000000)
																										   419 : ge r0.w, r0.w, -r0.w
																										   420 : movc r3.zw, r0.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																										   421 : mul r0.z, r0.z, r3.w
																										   422 : frc r0.z, r0.z
																										   423 : mul r0.z, r0.z, r3.z
																										   424 : mul r0.z, r0.z, l (0.024390)
																										   425 : frc r0.z, r0.z
																										   426 : mad r0.zw, r0.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																										   427 : round_ni r0.w, r0.w
																										   428 : add r4.x, -r0.w, r0.z
																										   429 : add r4.y, | r0.z | , l (-0.500000)
																										   430 : dp2 r0.z, r4.xyxx, r4.xyxx
																										   431 : rsq r0.z, r0.z
																										   432 : mul r0.zw, r0.zzzz, r4.xxxy
																										   433 : dp2 r0.z, r0.zwzz, r1.xyxx
																										   434 : mad r0.w, r2.x, l (34.000000), l (1.000000)
																										   435 : mul r0.w, r2.x, r0.w
																										   436 : mul r1.x, r0.w, l (289.000000)
																										   437 : ge r1.x, r1.x, -r1.x
																										   438 : movc r1.xy, r1.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																										   439 : mul r0.w, r0.w, r1.y
																										   440 : frc r0.w, r0.w
																										   441 : mad r0.w, r1.x, r0.w, r2.y
																										   442 : mad r1.x, r0.w, l (34.000000), l (1.000000)
																										   443 : mul r0.w, r0.w, r1.x
																										   444 : mul r1.x, r0.w, l (289.000000)
																										   445 : ge r1.x, r1.x, -r1.x
																										   446 : movc r1.xy, r1.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																										   447 : mul r0.w, r0.w, r1.y
																										   448 : frc r0.w, r0.w
																										   449 : mul r0.w, r0.w, r1.x
																										   450 : mul r0.w, r0.w, l (0.024390)
																										   451 : frc r0.w, r0.w
																										   452 : mad r1.xy, r0.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																										   453 : round_ni r0.w, r1.y
																										   454 : add r2.x, -r0.w, r1.x
																										   455 : add r2.y, | r1.x | , l (-0.500000)
																										   456 : dp2 r0.w, r2.xyxx, r2.xyxx
																										   457 : rsq r0.w, r0.w
																										   458 : mul r1.xy, r0.wwww, r2.xyxx
																										   459 : dp2 r0.w, r1.xyxx, r3.xyxx
																										   460 : add r0.w, -r0.z, r0.w
																										   461 : mad r0.z, r2.w, r0.w, r0.z
																										   462 : add r0.w, -r0.z, r1.z
																										   463 : mad r0.z, r2.z, r0.w, r0.z
																										   464 : add r0.z, r0.z, l (0.500000)
																										   465 : mul r0.z, r0.z, cb1[6].y
																										   466 : mad r0.x, r0.y, r0.x, r0.z
																										   467 : add r0.y, cb1[6].y, l (1.000000)
																										   468 : div r0.x, r0.x, r0.y
																										   469 : eq r0.y, cb0[11].w, l (0.000000)
																										   470 : add r1.xyz, -v1.xyzx, cb0[7].xyzx
																										   471 : movc r2.x, r0.y, r1.x, cb0[0].z
																										   472 : movc r2.y, r0.y, r1.y, cb0[1].z
																										   473 : movc r2.z, r0.y, r1.z, cb0[2].z
																										   474 : dp3 r0.y, r2.xyzx, r2.xyzx
																										   475 : rsq r0.y, r0.y
																										   476 : mul r0.yzw, r0.yyyy, r2.xxyz
																										   477 : dp3 r1.x, v2.xyzx, v2.xyzx
																										   478 : sqrt r1.x, r1.x
																										   479 : max r1.x, r1.x, l (0.000000)
																										   480 : div r1.x, l (1.000000, 1.000000, 1.000000, 1.000000), r1.x
																										   481 : mul r1.xyz, r1.xxxx, v2.xyzx
																										   482 : dp3 r1.w, r1.xyzx, r1.xyzx
																										   483 : rsq r1.w, r1.w
																										   484 : mul r1.xyz, r1.wwww, r1.xyzx
																										   485 : dp3_sat r0.y, r1.xyzx, r0.yzwy
																										   486 : add r0.y, -r0.y, l (1.000000)
																										   487 : log r0.y, r0.y
																										   488 : mul r0.y, r0.y, cb1[7].x
																										   489 : exp r0.y, r0.y
																										   490 : mul r0.y, r0.y, r0.x
																										   491 : add r1.xyz, cb1[3].xyzx, -cb1[4].xyzx
																										   492 : mad r0.xzw, r0.xxxx, r1.xxyz, cb1[4].xxyz
																										   493 : mad r0.xyz, r0.yyyy, cb1[7].yyyy, r0.xzwx
																										   494 : mul r1.xyz, r0.xyzx, cb1[6].zzzz
																										   495 : ld_indexable (texture2d)(float,float,float,float) r0.w, l (0, 0, 0, 0), t1.yzwx
																										   496 : mul r0.w, r0.w, cb0[449].y
																										   497 : mad o0.xyz, r1.xyzx, r0.wwww, r0.xyzx
																										   498 : mul r0.xyz, v1.yyyy, cb0[17].xywx
																										   499 : mad r0.xyz, cb0[16].xywx, v1.xxxx, r0.xyzx
																										   500 : mad r0.xyz, cb0[18].xywx, v1.zzzz, r0.xyzx
																										   501 : add r0.xyz, r0.xyzx, cb0[19].xywx
																										   502 : mul r0.y, r0.y, cb0[46].x
																										   503 : mul r1.xzw, r0.xxzy, l (0.500000, 0.000000, 0.500000, 0.500000)
																										   504 : add r0.xy, r1.zzzz, r1.xwxx
																										   505 : div r0.xy, r0.xyxx, r0.zzzz
																										   506 : add r0.z, r0.z, l (-1.000000)
																										   507 : mul r0.xy, r0.xyxx, cb0[42].xyxx
																										   508 : ftou r1.xy, r0.xyxx
																										   509 : mov r1.zw, l (0,0,0,0)
																										   510 : ld_indexable (texture2darray)(float,float,float,float) r0.x, r1.xyzw, t0.xyzw
																										   511 : mad r0.x, cb0[45].z, r0.x, cb0[45].w
																										   512 : div r0.x, l (1.000000, 1.000000, 1.000000, 1.000000), r0.x
																										   513 : add r0.x, -r0.z, r0.x
																										   514 : div_sat r0.x, r0.x, cb1[7].z
																										   515 : movc o0.w, cb0[448].y, l (0), r0.x
																										   516 : ret
																													// Approximately 0 instruction slots used


																													//////////////////////////////////////////////////////
																													Global Keywords : DEBUG_DISPLAY
																													Local Keywords : <none>
																													--Hardware tier variant : Tier 1
																													--Vertex shader for "d3d11" :
																													// Stats: 466 math, 9 temp registers
																													Uses vertex data channel "Vertex"
																													Uses vertex data channel "Normal"
																													Uses vertex data channel "Tangent"

																													Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
																													  Matrix4x4 unity_ObjectToWorld at 0
																													  Matrix4x4 unity_WorldToObject at 64
																													}
																													Constant Buffer "UnityGlobal" (7216 bytes) on slot 1 {
																													  Matrix4x4 _ViewProjMatrix at 256
																													  Vector3 _WorldSpaceCameraPos at 640
																													  Vector4 _TimeParameters at 1072
																													}
																													Constant Buffer "UnityPerMaterial" (304 bytes) on slot 2 {
																													  Vector4 Vector4_59D9B7DE at 0
																													  Float Vector1_C24F477F at 16
																													  Float Vector1_3F53ED5D at 20
																													  Float Vector1_34A2131D at 24
																													  Vector4 Vector4_BD02EA1F at 32
																													  Float Vector1_B73C588D at 80
																													  Float Vector1_157C4927 at 84
																													  Float Vector1_31818DD2 at 88
																													  Float Vector1_2E449449 at 92
																													  Float Vector1_1100DBB4 at 96
																													  Float Vector1_745E6F83 at 100
																													  Float Vector1_835232BE at 108
																													}

																													Shader Disassembly :
																													//
																													// Generated by Microsoft (R) D3D Shader Disassembler
																													//
																													//
																													// Input signature:
																													//
																													// Name                 Index   Mask Register SysValue  Format   Used
																													// -------------------- ----- ------ -------- -------- ------- ------
																													// POSITION                 0   xyz         0     NONE   float   xyz 
																													// NORMAL                   0   xyz         1     NONE   float   xyz 
																													// TANGENT                  0   xyzw        2     NONE   float   xyzw
																													//
																													//
																													// Output signature:
																													//
																													// Name                 Index   Mask Register SysValue  Format   Used
																													// -------------------- ----- ------ -------- -------- ------- ------
																													// SV_POSITION              0   xyzw        0      POS   float   xyzw
																													// TEXCOORD                 0   xyz         1     NONE   float   xyz 
																													// TEXCOORD                 1   xyz         2     NONE   float   xyz 
																													// TEXCOORD                 2   xyzw        3     NONE   float   xyzw
																													//
																														  vs_5_0
																														  dcl_globalFlags refactoringAllowed
																														  dcl_constantbuffer CB0[7], immediateIndexed
																														  dcl_constantbuffer CB1[68], immediateIndexed
																														  dcl_constantbuffer CB2[7], immediateIndexed
																														  dcl_input v0.xyz
																														  dcl_input v1.xyz
																														  dcl_input v2.xyzw
																														  dcl_output_siv o0.xyzw, position
																														  dcl_output o1.xyz
																														  dcl_output o2.xyz
																														  dcl_output o3.xyzw
																														  dcl_temps 9
																													   0: mov r0.x, cb0[0].x
																													   1 : mov r0.y, cb0[1].x
																													   2 : mov r0.z, cb0[2].x
																													   3 : add r1.xyw, cb0[3].xyxz, -cb1[40].xyxz
																													   4 : mov r0.w, r1.x
																													   5 : mov r2.xyz, v0.xyzx
																													   6 : mov r2.w, l (1.000000)
																													   7 : dp4 r3.x, r0.xyzw, r2.xyzw
																													   8 : mov r4.w, r1.y
																													   9 : mov r4.x, cb0[0].y
																													  10 : mov r4.y, cb0[1].y
																													  11 : mov r4.z, cb0[2].y
																													  12 : dp4 r3.y, r4.xyzw, r2.xyzw
																													  13 : mov r1.x, cb0[0].z
																													  14 : mov r1.y, cb0[1].z
																													  15 : mov r1.z, cb0[2].z
																													  16 : dp4 r3.z, r1.xyzw, r2.xyzw
																													  17 : add r2.xyz, r3.xyzx, cb1[40].xyzx
																													  18 : mul r2.w, cb2[0].w, l (0.017453)
																													  19 : sincos r3.x, r5.x, r2.w
																													  20 : add r2.w, -r5.x, l (1.000000)
																													  21 : dp3 r3.y, cb2[0].xyzx, cb2[0].xyzx
																													  22 : rsq r3.y, r3.y
																													  23 : mul r3.yzw, r3.yyyy, cb2[0].zzyx
																													  24 : mul r6.xyzw, r2.wwww, r3.wwyz
																													  25 : mul r5.yzw, r3.xxxx, r3.yyzw
																													  26 : mad r7.xy, r6.xwxx, r3.wzww, r5.xxxx
																													  27 : mad r7.z, r6.y, r3.z, -r5.y
																													  28 : mad r8.xy, r6.zyzz, r3.wzww, r5.zyzz
																													  29 : mad r8.z, r6.w, r3.y, -r5.w
																													  30 : mov r7.w, r8.x
																													  31 : dp3 r3.x, r7.xzwx, r2.xyzx
																													  32 : mov r8.w, r7.y
																													  33 : dp3 r3.y, r8.ywzy, r2.xyzx
																													  34 : add r2.xyz, -r2.xyzx, cb0[3].xyzx
																													  35 : dp3 r2.x, r2.xyzx, r2.xyzx
																													  36 : sqrt r2.x, r2.x
																													  37 : div r2.x, r2.x, cb2[6].w
																													  38 : mad r2.yz, cb1[67].xxxx, cb2[1].yyyy, r3.xxyx
																													  39 : mul r2.yz, r2.yyzy, cb2[1].xxxx
																													  40 : round_ni r3.zw, r2.yyyz
																													  41 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
																													  42 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																													  43 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																													  44 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													  45 : mul r5.xy, r5.xyxx, r6.zwzz
																													  46 : frc r5.xy, r5.xyxx
																													  47 : mul r5.xy, r5.xyxx, r6.xyxx
																													  48 : mad r2.w, r5.x, l (34.000000), l (1.000000)
																													  49 : mul r2.w, r5.x, r2.w
																													  50 : mul r5.x, r2.w, l (289.000000)
																													  51 : ge r5.x, r5.x, -r5.x
																													  52 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
																													  53 : mul r2.w, r2.w, r5.z
																													  54 : frc r2.yzw, r2.yyzw
																													  55 : mad r2.w, r5.x, r2.w, r5.y
																													  56 : mad r5.x, r2.w, l (34.000000), l (1.000000)
																													  57 : mul r2.w, r2.w, r5.x
																													  58 : mul r5.x, r2.w, l (289.000000)
																													  59 : ge r5.x, r5.x, -r5.x
																													  60 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																													  61 : mul r2.w, r2.w, r5.y
																													  62 : frc r2.w, r2.w
																													  63 : mul r2.w, r2.w, r5.x
																													  64 : mul r2.w, r2.w, l (0.024390)
																													  65 : frc r2.w, r2.w
																													  66 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																													  67 : round_ni r2.w, r5.y
																													  68 : add r6.x, -r2.w, r5.x
																													  69 : add r6.y, | r5.x | , l (-0.500000)
																													  70 : dp2 r2.w, r6.xyxx, r6.xyxx
																													  71 : rsq r2.w, r2.w
																													  72 : mul r5.xy, r2.wwww, r6.xyxx
																													  73 : add r5.zw, r2.yyyz, l (0.000000, 0.000000, -1.000000, -1.000000)
																													  74 : dp2 r2.w, r5.xyxx, r5.zwzz
																													  75 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																													  76 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																													  77 : ge r6.xyzw, r6.xyzw, -r6.xyzw
																													  78 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													  79 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													  80 : mul r5.zw, r5.zzzw, r7.zzzw
																													  81 : mul r5.xy, r5.xyxx, r6.zwzz
																													  82 : frc r5.xyzw, r5.xyzw
																													  83 : mul r5.xy, r5.xyxx, r6.xyxx
																													  84 : mul r5.zw, r5.zzzw, r7.xxxy
																													  85 : mad r6.x, r5.z, l (34.000000), l (1.000000)
																													  86 : mul r5.z, r5.z, r6.x
																													  87 : mul r6.x, r5.z, l (289.000000)
																													  88 : ge r6.x, r6.x, -r6.x
																													  89 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																													  90 : mul r5.z, r5.z, r6.y
																													  91 : frc r5.z, r5.z
																													  92 : mad r5.z, r6.x, r5.z, r5.w
																													  93 : mad r5.w, r5.z, l (34.000000), l (1.000000)
																													  94 : mul r5.z, r5.z, r5.w
																													  95 : mul r5.w, r5.z, l (289.000000)
																													  96 : ge r5.w, r5.w, -r5.w
																													  97 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																													  98 : mul r5.z, r5.z, r6.y
																													  99 : frc r5.z, r5.z
																													 100 : mul r5.z, r5.z, r6.x
																													 101 : mul r5.z, r5.z, l (0.024390)
																													 102 : frc r5.z, r5.z
																													 103 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																													 104 : round_ni r5.w, r5.w
																													 105 : add r6.x, -r5.w, r5.z
																													 106 : add r6.y, | r5.z | , l (-0.500000)
																													 107 : dp2 r5.z, r6.xyxx, r6.xyxx
																													 108 : rsq r5.z, r5.z
																													 109 : mul r5.zw, r5.zzzz, r6.xxxy
																													 110 : add r6.xyzw, r2.yzyz, l (-0.000000, -1.000000, -1.000000, -0.000000)
																													 111 : dp2 r5.z, r5.zwzz, r6.zwzz
																													 112 : add r2.w, r2.w, -r5.z
																													 113 : mul r6.zw, r2.yyyz, r2.yyyz
																													 114 : mul r6.zw, r2.yyyz, r6.zzzw
																													 115 : mad r7.xy, r2.yzyy, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																													 116 : mad r7.xy, r2.yzyy, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
																													 117 : mul r6.zw, r6.zzzw, r7.xxxy
																													 118 : mad r2.w, r6.w, r2.w, r5.z
																													 119 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																													 120 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																													 121 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													 122 : mul r3.zw, r3.zzzw, r7.zzzw
																													 123 : frc r3.zw, r3.zzzw
																													 124 : mul r3.zw, r3.zzzw, r7.xxxy
																													 125 : mad r5.z, r3.z, l (34.000000), l (1.000000)
																													 126 : mul r3.z, r3.z, r5.z
																													 127 : mul r5.z, r3.z, l (289.000000)
																													 128 : ge r5.z, r5.z, -r5.z
																													 129 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 130 : mul r3.z, r3.z, r5.w
																													 131 : frc r3.z, r3.z
																													 132 : mad r3.z, r5.z, r3.z, r3.w
																													 133 : mad r3.w, r3.z, l (34.000000), l (1.000000)
																													 134 : mul r3.z, r3.z, r3.w
																													 135 : mul r3.w, r3.z, l (289.000000)
																													 136 : ge r3.w, r3.w, -r3.w
																													 137 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 138 : mul r3.z, r3.z, r5.w
																													 139 : frc r3.z, r3.z
																													 140 : mul r3.z, r3.z, r5.z
																													 141 : mul r3.z, r3.z, l (0.024390)
																													 142 : frc r3.z, r3.z
																													 143 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																													 144 : round_ni r3.w, r3.w
																													 145 : add r7.x, -r3.w, r3.z
																													 146 : add r7.y, | r3.z | , l (-0.500000)
																													 147 : dp2 r3.z, r7.xyxx, r7.xyxx
																													 148 : rsq r3.z, r3.z
																													 149 : mul r3.zw, r3.zzzz, r7.xxxy
																													 150 : dp2 r2.y, r3.zwzz, r2.yzyy
																													 151 : mad r2.z, r5.x, l (34.000000), l (1.000000)
																													 152 : mul r2.z, r5.x, r2.z
																													 153 : mul r3.z, r2.z, l (289.000000)
																													 154 : ge r3.z, r3.z, -r3.z
																													 155 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 156 : mul r2.z, r2.z, r3.w
																													 157 : frc r2.z, r2.z
																													 158 : mad r2.z, r3.z, r2.z, r5.y
																													 159 : mad r3.z, r2.z, l (34.000000), l (1.000000)
																													 160 : mul r2.z, r2.z, r3.z
																													 161 : mul r3.z, r2.z, l (289.000000)
																													 162 : ge r3.z, r3.z, -r3.z
																													 163 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 164 : mul r2.z, r2.z, r3.w
																													 165 : frc r2.z, r2.z
																													 166 : mul r2.z, r2.z, r3.z
																													 167 : mul r2.z, r2.z, l (0.024390)
																													 168 : frc r2.z, r2.z
																													 169 : mad r3.zw, r2.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																													 170 : round_ni r2.z, r3.w
																													 171 : add r5.x, -r2.z, r3.z
																													 172 : add r5.y, | r3.z | , l (-0.500000)
																													 173 : dp2 r2.z, r5.xyxx, r5.xyxx
																													 174 : rsq r2.z, r2.z
																													 175 : mul r3.zw, r2.zzzz, r5.xxxy
																													 176 : dp2 r2.z, r3.zwzz, r6.xyxx
																													 177 : add r2.z, -r2.y, r2.z
																													 178 : mad r2.y, r6.w, r2.z, r2.y
																													 179 : add r2.z, -r2.y, r2.w
																													 180 : mad r2.y, r6.z, r2.z, r2.y
																													 181 : add r2.y, r2.y, l (0.500000)
																													 182 : mul r2.zw, r3.xxxy, cb2[1].xxxx
																													 183 : mad r3.xy, cb1[67].xxxx, cb2[6].xxxx, r3.xyxx
																													 184 : mul r3.xy, r3.xyxx, cb2[5].wwww
																													 185 : round_ni r3.zw, r2.zzzw
																													 186 : frc r2.zw, r2.zzzw
																													 187 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
																													 188 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																													 189 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																													 190 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													 191 : mul r5.xy, r5.xyxx, r6.zwzz
																													 192 : frc r5.xy, r5.xyxx
																													 193 : mul r5.xy, r5.xyxx, r6.xyxx
																													 194 : mad r5.z, r5.x, l (34.000000), l (1.000000)
																													 195 : mul r5.x, r5.x, r5.z
																													 196 : mul r5.z, r5.x, l (289.000000)
																													 197 : ge r5.z, r5.z, -r5.z
																													 198 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 199 : mul r5.x, r5.w, r5.x
																													 200 : frc r5.x, r5.x
																													 201 : mad r5.x, r5.z, r5.x, r5.y
																													 202 : mad r5.y, r5.x, l (34.000000), l (1.000000)
																													 203 : mul r5.x, r5.x, r5.y
																													 204 : mul r5.y, r5.x, l (289.000000)
																													 205 : ge r5.y, r5.y, -r5.y
																													 206 : movc r5.yz, r5.yyyy, l (0,289.000000,0.003460,0), l (0,-289.000000,-0.003460,0)
																													 207 : mul r5.x, r5.z, r5.x
																													 208 : frc r5.x, r5.x
																													 209 : mul r5.x, r5.x, r5.y
																													 210 : mul r5.x, r5.x, l (0.024390)
																													 211 : frc r5.x, r5.x
																													 212 : mad r5.xy, r5.xxxx, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																													 213 : round_ni r5.y, r5.y
																													 214 : add r6.x, -r5.y, r5.x
																													 215 : add r6.y, | r5.x | , l (-0.500000)
																													 216 : dp2 r5.x, r6.xyxx, r6.xyxx
																													 217 : rsq r5.x, r5.x
																													 218 : mul r5.xy, r5.xxxx, r6.xyxx
																													 219 : add r5.zw, r2.zzzw, l (0.000000, 0.000000, -1.000000, -1.000000)
																													 220 : dp2 r5.x, r5.xyxx, r5.zwzz
																													 221 : add r6.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																													 222 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																													 223 : ge r7.xyzw, r7.xyzw, -r7.xyzw
																													 224 : movc r8.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													 225 : movc r7.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													 226 : mul r5.yz, r6.zzwz, r8.zzwz
																													 227 : mul r6.xy, r6.xyxx, r7.zwzz
																													 228 : frc r6.xy, r6.xyxx
																													 229 : mul r6.xy, r6.xyxx, r7.xyxx
																													 230 : frc r5.yz, r5.yyzy
																													 231 : mul r5.yz, r5.yyzy, r8.xxyx
																													 232 : mad r5.w, r5.y, l (34.000000), l (1.000000)
																													 233 : mul r5.y, r5.y, r5.w
																													 234 : mul r5.w, r5.y, l (289.000000)
																													 235 : ge r5.w, r5.w, -r5.w
																													 236 : movc r6.zw, r5.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 237 : mul r5.y, r5.y, r6.w
																													 238 : frc r5.y, r5.y
																													 239 : mad r5.y, r6.z, r5.y, r5.z
																													 240 : mad r5.z, r5.y, l (34.000000), l (1.000000)
																													 241 : mul r5.y, r5.y, r5.z
																													 242 : mul r5.z, r5.y, l (289.000000)
																													 243 : ge r5.z, r5.z, -r5.z
																													 244 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 245 : mul r5.y, r5.w, r5.y
																													 246 : frc r5.y, r5.y
																													 247 : mul r5.y, r5.y, r5.z
																													 248 : mul r5.y, r5.y, l (0.024390)
																													 249 : frc r5.y, r5.y
																													 250 : mad r5.yz, r5.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																													 251 : round_ni r5.z, r5.z
																													 252 : add r7.x, -r5.z, r5.y
																													 253 : add r7.y, | r5.y | , l (-0.500000)
																													 254 : dp2 r5.y, r7.xyxx, r7.xyxx
																													 255 : rsq r5.y, r5.y
																													 256 : mul r5.yz, r5.yyyy, r7.xxyx
																													 257 : add r7.xyzw, r2.zwzw, l (-0.000000, -1.000000, -1.000000, -0.000000)
																													 258 : dp2 r5.y, r5.yzyy, r7.zwzz
																													 259 : add r5.x, -r5.y, r5.x
																													 260 : mul r5.zw, r2.zzzw, r2.zzzw
																													 261 : mul r5.zw, r2.zzzw, r5.zzzw
																													 262 : mad r6.zw, r2.zzzw, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
																													 263 : mad r6.zw, r2.zzzw, r6.zzzw, l (0.000000, 0.000000, 10.000000, 10.000000)
																													 264 : mul r5.zw, r5.zzzw, r6.zzzw
																													 265 : mad r5.x, r5.w, r5.x, r5.y
																													 266 : mul r8.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																													 267 : ge r8.xyzw, r8.xyzw, -r8.zwzw
																													 268 : movc r8.xyzw, r8.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													 269 : mul r3.zw, r3.zzzw, r8.zzzw
																													 270 : frc r3.zw, r3.zzzw
																													 271 : mul r3.zw, r3.zzzw, r8.xxxy
																													 272 : mad r5.y, r3.z, l (34.000000), l (1.000000)
																													 273 : mul r3.z, r3.z, r5.y
																													 274 : mul r5.y, r3.z, l (289.000000)
																													 275 : ge r5.y, r5.y, -r5.y
																													 276 : movc r6.zw, r5.yyyy, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 277 : mul r3.z, r3.z, r6.w
																													 278 : frc r3.z, r3.z
																													 279 : mad r3.z, r6.z, r3.z, r3.w
																													 280 : mad r3.w, r3.z, l (34.000000), l (1.000000)
																													 281 : mul r3.z, r3.z, r3.w
																													 282 : mul r3.w, r3.z, l (289.000000)
																													 283 : ge r3.w, r3.w, -r3.w
																													 284 : movc r6.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 285 : mul r3.z, r3.z, r6.w
																													 286 : frc r3.z, r3.z
																													 287 : mul r3.z, r3.z, r6.z
																													 288 : mul r3.z, r3.z, l (0.024390)
																													 289 : frc r3.z, r3.z
																													 290 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																													 291 : round_ni r3.w, r3.w
																													 292 : add r8.x, -r3.w, r3.z
																													 293 : add r8.y, | r3.z | , l (-0.500000)
																													 294 : dp2 r3.z, r8.xyxx, r8.xyxx
																													 295 : rsq r3.z, r3.z
																													 296 : mul r3.zw, r3.zzzz, r8.xxxy
																													 297 : dp2 r2.z, r3.zwzz, r2.zwzz
																													 298 : mad r2.w, r6.x, l (34.000000), l (1.000000)
																													 299 : mul r2.w, r6.x, r2.w
																													 300 : mul r3.z, r2.w, l (289.000000)
																													 301 : ge r3.z, r3.z, -r3.z
																													 302 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 303 : mul r2.w, r2.w, r3.w
																													 304 : frc r2.w, r2.w
																													 305 : mad r2.w, r3.z, r2.w, r6.y
																													 306 : mad r3.z, r2.w, l (34.000000), l (1.000000)
																													 307 : mul r2.w, r2.w, r3.z
																													 308 : mul r3.z, r2.w, l (289.000000)
																													 309 : ge r3.z, r3.z, -r3.z
																													 310 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 311 : mul r2.w, r2.w, r3.w
																													 312 : frc r2.w, r2.w
																													 313 : mul r2.w, r2.w, r3.z
																													 314 : mul r2.w, r2.w, l (0.024390)
																													 315 : frc r2.w, r2.w
																													 316 : mad r3.zw, r2.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																													 317 : round_ni r2.w, r3.w
																													 318 : add r6.x, -r2.w, r3.z
																													 319 : add r6.y, | r3.z | , l (-0.500000)
																													 320 : dp2 r2.w, r6.xyxx, r6.xyxx
																													 321 : rsq r2.w, r2.w
																													 322 : mul r3.zw, r2.wwww, r6.xxxy
																													 323 : dp2 r2.w, r3.zwzz, r7.xyxx
																													 324 : add r2.w, -r2.z, r2.w
																													 325 : mad r2.z, r5.w, r2.w, r2.z
																													 326 : add r2.w, -r2.z, r5.x
																													 327 : mad r2.z, r5.z, r2.w, r2.z
																													 328 : add r2.y, r2.y, r2.z
																													 329 : add r2.y, r2.y, l (0.500000)
																													 330 : mul_sat r2.y, r2.y, l (0.500000)
																													 331 : log r2.y, r2.y
																													 332 : mul r2.y, r2.y, cb2[5].z
																													 333 : exp r2.y, r2.y
																													 334 : add r2.y, r2.y, -cb2[2].x
																													 335 : add r2.zw, -cb2[2].zzzx, cb2[2].wwwy
																													 336 : mul r2.y, r2.z, r2.y
																													 337 : div r2.y, r2.y, r2.w
																													 338 : add r2.y, r2.y, cb2[2].z
																													 339 : add r2.y, | r2.y | , -cb2[5].x
																													 340 : add r2.z, -cb2[5].x, cb2[5].y
																													 341 : div r2.z, l (1.000000, 1.000000, 1.000000, 1.000000), r2.z
																													 342 : mul_sat r2.y, r2.z, r2.y
																													 343 : mad r2.z, r2.y, l (-2.000000), l (3.000000)
																													 344 : mul r2.y, r2.y, r2.y
																													 345 : round_ni r3.zw, r3.xxxy
																													 346 : frc r3.xy, r3.xyxx
																													 347 : add r5.xy, r3.zwzz, l (1.000000, 1.000000, 0.000000, 0.000000)
																													 348 : mul r6.xyzw, r5.xyxy, l (289.000000, 289.000000, 289.000000, 289.000000)
																													 349 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																													 350 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													 351 : mul r5.xy, r5.xyxx, r6.zwzz
																													 352 : frc r5.xy, r5.xyxx
																													 353 : mul r5.xy, r5.xyxx, r6.xyxx
																													 354 : mad r2.w, r5.x, l (34.000000), l (1.000000)
																													 355 : mul r2.w, r5.x, r2.w
																													 356 : mul r5.x, r2.w, l (289.000000)
																													 357 : ge r5.x, r5.x, -r5.x
																													 358 : movc r5.xz, r5.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
																													 359 : mul r2.w, r2.w, r5.z
																													 360 : frc r2.w, r2.w
																													 361 : mad r2.w, r5.x, r2.w, r5.y
																													 362 : mad r5.x, r2.w, l (34.000000), l (1.000000)
																													 363 : mul r2.w, r2.w, r5.x
																													 364 : mul r5.x, r2.w, l (289.000000)
																													 365 : ge r5.x, r5.x, -r5.x
																													 366 : movc r5.xy, r5.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																													 367 : mul r2.w, r2.w, r5.y
																													 368 : frc r2.w, r2.w
																													 369 : mul r2.w, r2.w, r5.x
																													 370 : mul r2.w, r2.w, l (0.024390)
																													 371 : frc r2.w, r2.w
																													 372 : mad r5.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																													 373 : round_ni r2.w, r5.y
																													 374 : add r6.x, -r2.w, r5.x
																													 375 : add r6.y, | r5.x | , l (-0.500000)
																													 376 : dp2 r2.w, r6.xyxx, r6.xyxx
																													 377 : rsq r2.w, r2.w
																													 378 : mul r5.xy, r2.wwww, r6.xyxx
																													 379 : add r5.zw, r3.xxxy, l (0.000000, 0.000000, -1.000000, -1.000000)
																													 380 : dp2 r2.w, r5.xyxx, r5.zwzz
																													 381 : add r5.xyzw, r3.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																													 382 : mul r6.xyzw, r5.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																													 383 : ge r6.xyzw, r6.xyzw, -r6.xyzw
																													 384 : movc r7.xyzw, r6.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													 385 : movc r6.xyzw, r6.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													 386 : mul r5.zw, r5.zzzw, r7.zzzw
																													 387 : mul r5.xy, r5.xyxx, r6.zwzz
																													 388 : frc r5.xyzw, r5.xyzw
																													 389 : mul r5.xy, r5.xyxx, r6.xyxx
																													 390 : mul r5.zw, r5.zzzw, r7.xxxy
																													 391 : mad r6.x, r5.z, l (34.000000), l (1.000000)
																													 392 : mul r5.z, r5.z, r6.x
																													 393 : mul r6.x, r5.z, l (289.000000)
																													 394 : ge r6.x, r6.x, -r6.x
																													 395 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																													 396 : mul r5.z, r5.z, r6.y
																													 397 : frc r5.z, r5.z
																													 398 : mad r5.z, r6.x, r5.z, r5.w
																													 399 : mad r5.w, r5.z, l (34.000000), l (1.000000)
																													 400 : mul r5.z, r5.z, r5.w
																													 401 : mul r5.w, r5.z, l (289.000000)
																													 402 : ge r5.w, r5.w, -r5.w
																													 403 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																													 404 : mul r5.z, r5.z, r6.y
																													 405 : frc r5.z, r5.z
																													 406 : mul r5.z, r5.z, r6.x
																													 407 : mul r5.z, r5.z, l (0.024390)
																													 408 : frc r5.z, r5.z
																													 409 : mad r5.zw, r5.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																													 410 : round_ni r5.w, r5.w
																													 411 : add r6.x, -r5.w, r5.z
																													 412 : add r6.y, | r5.z | , l (-0.500000)
																													 413 : dp2 r5.z, r6.xyxx, r6.xyxx
																													 414 : rsq r5.z, r5.z
																													 415 : mul r5.zw, r5.zzzz, r6.xxxy
																													 416 : add r6.xyzw, r3.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																													 417 : dp2 r5.z, r5.zwzz, r6.zwzz
																													 418 : add r2.w, r2.w, -r5.z
																													 419 : mul r6.zw, r3.xxxy, r3.xxxy
																													 420 : mul r6.zw, r3.xxxy, r6.zzzw
																													 421 : mad r7.xy, r3.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																													 422 : mad r7.xy, r3.xyxx, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
																													 423 : mul r6.zw, r6.zzzw, r7.xxxy
																													 424 : mad r2.w, r6.w, r2.w, r5.z
																													 425 : mul r7.xyzw, r3.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																													 426 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																													 427 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																													 428 : mul r3.zw, r3.zzzw, r7.zzzw
																													 429 : frc r3.zw, r3.zzzw
																													 430 : mul r3.zw, r3.zzzw, r7.xxxy
																													 431 : mad r5.z, r3.z, l (34.000000), l (1.000000)
																													 432 : mul r3.z, r3.z, r5.z
																													 433 : mul r5.z, r3.z, l (289.000000)
																													 434 : ge r5.z, r5.z, -r5.z
																													 435 : movc r5.zw, r5.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 436 : mul r3.z, r3.z, r5.w
																													 437 : frc r3.z, r3.z
																													 438 : mad r3.z, r5.z, r3.z, r3.w
																													 439 : mad r3.w, r3.z, l (34.000000), l (1.000000)
																													 440 : mul r3.z, r3.z, r3.w
																													 441 : mul r3.w, r3.z, l (289.000000)
																													 442 : ge r3.w, r3.w, -r3.w
																													 443 : movc r5.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 444 : mul r3.z, r3.z, r5.w
																													 445 : frc r3.z, r3.z
																													 446 : mul r3.z, r3.z, r5.z
																													 447 : mul r3.z, r3.z, l (0.024390)
																													 448 : frc r3.z, r3.z
																													 449 : mad r3.zw, r3.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																													 450 : round_ni r3.w, r3.w
																													 451 : add r7.x, -r3.w, r3.z
																													 452 : add r7.y, | r3.z | , l (-0.500000)
																													 453 : dp2 r3.z, r7.xyxx, r7.xyxx
																													 454 : rsq r3.z, r3.z
																													 455 : mul r3.zw, r3.zzzz, r7.xxxy
																													 456 : dp2 r3.x, r3.zwzz, r3.xyxx
																													 457 : mad r3.y, r5.x, l (34.000000), l (1.000000)
																													 458 : mul r3.y, r5.x, r3.y
																													 459 : mul r3.z, r3.y, l (289.000000)
																													 460 : ge r3.z, r3.z, -r3.z
																													 461 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 462 : mul r3.y, r3.w, r3.y
																													 463 : frc r3.y, r3.y
																													 464 : mad r3.y, r3.z, r3.y, r5.y
																													 465 : mad r3.z, r3.y, l (34.000000), l (1.000000)
																													 466 : mul r3.y, r3.y, r3.z
																													 467 : mul r3.z, r3.y, l (289.000000)
																													 468 : ge r3.z, r3.z, -r3.z
																													 469 : movc r3.zw, r3.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																													 470 : mul r3.y, r3.w, r3.y
																													 471 : frc r3.y, r3.y
																													 472 : mul r3.y, r3.y, r3.z
																													 473 : mul r3.y, r3.y, l (0.024390)
																													 474 : frc r3.y, r3.y
																													 475 : mad r3.yz, r3.yyyy, l (0.000000, 2.000000, 2.000000, 0.000000), l (0.000000, -1.000000, -0.500000, 0.000000)
																													 476 : round_ni r3.z, r3.z
																													 477 : add r5.x, -r3.z, r3.y
																													 478 : add r5.y, | r3.y | , l (-0.500000)
																													 479 : dp2 r3.y, r5.xyxx, r5.xyxx
																													 480 : rsq r3.y, r3.y
																													 481 : mul r3.yz, r3.yyyy, r5.xxyx
																													 482 : dp2 r3.y, r3.yzyy, r6.xyxx
																													 483 : add r3.y, -r3.x, r3.y
																													 484 : mad r3.x, r6.w, r3.y, r3.x
																													 485 : add r2.w, r2.w, -r3.x
																													 486 : mad r2.w, r6.z, r2.w, r3.x
																													 487 : add r2.w, r2.w, l (0.500000)
																													 488 : mul r2.w, r2.w, cb2[6].y
																													 489 : mad r2.y, r2.z, r2.y, r2.w
																													 490 : add r2.z, cb2[6].y, l (1.000000)
																													 491 : div r2.y, r2.y, r2.z
																													 492 : mul r2.yzw, r2.yyyy, v1.xxyz
																													 493 : mad r2.yzw, r2.yyzw, cb2[1].zzzz, v0.xxyz
																													 494 : dp3 r3.x, v1.xyzx, cb0[4].xyzx
																													 495 : dp3 r3.y, v1.xyzx, cb0[5].xyzx
																													 496 : dp3 r3.z, v1.xyzx, cb0[6].xyzx
																													 497 : dp3 r3.w, r3.xyzx, r3.xyzx
																													 498 : max r3.w, r3.w, l (0.000000)
																													 499 : rsq r3.w, r3.w
																													 500 : mul r3.xyz, r3.wwww, r3.xyzx
																													 501 : mul r3.w, r2.x, r2.x
																													 502 : mul r2.x, r2.x, r3.w
																													 503 : mad r2.xyz, r3.xyzx, r2.xxxx, r2.yzwy
																													 504 : mov o2.xyz, r3.xyzx
																													 505 : mov r2.w, l (1.000000)
																													 506 : dp4 r3.y, r4.xyzw, r2.xyzw
																													 507 : mul r4.xyzw, r3.yyyy, cb1[17].xyzw
																													 508 : dp4 r3.x, r0.xyzw, r2.xyzw
																													 509 : dp4 r3.z, r1.xyzw, r2.xyzw
																													 510 : mad r0.xyzw, cb1[16].xyzw, r3.xxxx, r4.xyzw
																													 511 : mov o1.xyz, r3.xyzx
																													 512 : mad r0.xyzw, cb1[18].xyzw, r3.zzzz, r0.xyzw
																													 513 : add o0.xyzw, r0.xyzw, cb1[19].xyzw
																													 514 : mul r0.xyz, v2.yyyy, cb0[1].xyzx
																													 515 : mad r0.xyz, cb0[0].xyzx, v2.xxxx, r0.xyzx
																													 516 : mad r0.xyz, cb0[2].xyzx, v2.zzzz, r0.xyzx
																													 517 : dp3 r0.w, r0.xyzx, r0.xyzx
																													 518 : max r0.w, r0.w, l (0.000000)
																													 519 : rsq r0.w, r0.w
																													 520 : mul o3.xyz, r0.wwww, r0.xyzx
																													 521 : mov o3.w, v2.w
																													 522 : ret
																															  // Approximately 0 instruction slots used


																															  -- Hardware tier variant : Tier 1
																															  --Fragment shader for "d3d11" :
																															  // Stats: 498 math, 13 temp registers, 42 branches
																															  Set 2DArray Texture "_CameraDepthTexture" to slot 0 sampler slot - 1
																															  Set 2D Texture "_ExposureTexture" to slot 1 sampler slot - 1

																															  Constant Buffer "UnityPerDraw" (592 bytes) on slot 0 {
																																Vector4 unity_WorldTransformParams at 144
																															  }
																															  Constant Buffer "UnityGlobal" (7216 bytes) on slot 1 {
																																Matrix4x4 _ViewMatrix at 0
																																Matrix4x4 _InvViewMatrix at 64
																																Matrix4x4 _ProjMatrix at 128
																																Matrix4x4 _ViewProjMatrix at 256
																																Vector3 _WorldSpaceCameraPos at 640
																																Vector4 _ScreenSize at 672
																																Vector4 _ZBufferParams at 720
																																Vector4 _ProjectionParams at 736
																																Vector4 _TimeParameters at 1072
																																ScalarInt _OffScreenRendering at 7172
																																Float _ProbeExposureScale at 7188
																															  }
																															  Constant Buffer "UnityDebugDisplay" (400 bytes) on slot 2 {
																																Vector1 _DebugViewMaterialArray[11] at 16
																																ScalarInt _DebugFullScreenMode at 200
																																Float _DebugTransparencyOverdrawWeight at 204
																															  }
																															  Constant Buffer "UnityPerMaterial" (304 bytes) on slot 3 {
																																Vector4 Vector4_59D9B7DE at 0
																																Float Vector1_C24F477F at 16
																																Float Vector1_3F53ED5D at 20
																																Vector4 Vector4_BD02EA1F at 32
																																Vector4 Color_94B19C9E at 48
																																Vector4 Color_1325E6EB at 64
																																Float Vector1_B73C588D at 80
																																Float Vector1_157C4927 at 84
																																Float Vector1_31818DD2 at 88
																																Float Vector1_2E449449 at 92
																																Float Vector1_1100DBB4 at 96
																																Float Vector1_745E6F83 at 100
																																Float Vector1_8F0E7C7D at 104
																																Float Vector1_EB822D68 at 112
																																Float Vector1_B624F6DD at 116
																																Float Vector1_528AE1A1 at 120
																															  }

																															  Shader Disassembly :
																															  //
																															  // Generated by Microsoft (R) D3D Shader Disassembler
																															  //
																															  //
																															  // Input signature:
																															  //
																															  // Name                 Index   Mask Register SysValue  Format   Used
																															  // -------------------- ----- ------ -------- -------- ------- ------
																															  // SV_POSITION              0   xyzw        0      POS   float       
																															  // TEXCOORD                 0   xyz         1     NONE   float   xyz 
																															  // TEXCOORD                 1   xyz         2     NONE   float   xyz 
																															  // TEXCOORD                 2   xyzw        3     NONE   float   xyzw
																															  //
																															  //
																															  // Output signature:
																															  //
																															  // Name                 Index   Mask Register SysValue  Format   Used
																															  // -------------------- ----- ------ -------- -------- ------- ------
																															  // SV_Target                0   xyzw        0   TARGET   float   xyzw
																															  //
																																	ps_5_0
																																	dcl_globalFlags refactoringAllowed
																																	dcl_constantbuffer CB0[10], immediateIndexed
																																	dcl_constantbuffer CB1[450], immediateIndexed
																																	dcl_constantbuffer CB2[13], dynamicIndexed
																																	dcl_constantbuffer CB3[8], immediateIndexed
																																	dcl_resource_texture2darray (float,float,float,float) t0
																																	dcl_resource_texture2d (float,float,float,float) t1
																																	dcl_input_ps linear v1.xyz
																																	dcl_input_ps linear v2.xyz
																																	dcl_input_ps linear v3.xyzw
																																	dcl_output o0.xyzw
																																	dcl_temps 13
																																 0: dp3 r0.x, v2.xyzx, v2.xyzx
																																 1 : sqrt r0.x, r0.x
																																 2 : max r0.x, r0.x, l (0.000000)
																																 3 : div r0.x, l (1.000000, 1.000000, 1.000000, 1.000000), r0.x
																																 4 : lt r0.y, l (0.000000), v3.w
																																 5 : movc r0.y, r0.y, l (1.000000), l (-1.000000)
																																 6 : mul r0.y, r0.y, cb0[9].w
																																 7 : mul r1.xyz, v2.zxyz, v3.yzxy
																																 8 : mad r1.xyz, v2.yzxy, v3.zxyz, -r1.xyzx
																																 9 : mul r0.yzw, r0.yyyy, r1.xxyz
																																10 : mul r1.xyz, r0.xxxx, v3.xyzx
																																11 : mul r0.yzw, r0.xxxx, r0.yyzw
																																12 : mul r2.xyz, r0.xxxx, v2.xyzx
																																13 : eq r0.x, cb1[11].w, l (0.000000)
																																14 : add r3.xyz, -v1.xyzx, cb1[7].xyzx
																																15 : movc r4.x, r0.x, r3.x, cb1[0].z
																																16 : movc r4.y, r0.x, r3.y, cb1[1].z
																																17 : movc r4.z, r0.x, r3.z, cb1[2].z
																																18 : dp3 r0.x, r4.xyzx, r4.xyzx
																																19 : rsq r0.x, r0.x
																																20 : mul r3.xyz, r0.xxxx, r4.xyzx
																																21 : add r4.xyz, v1.xyzx, cb1[40].xyzx
																																22 : mul r5.xyz, v1.yyyy, cb1[17].xywx
																																23 : mad r5.xyz, cb1[16].xywx, v1.xxxx, r5.xyzx
																																24 : mad r5.xyz, cb1[18].xywx, v1.zzzz, r5.xyzx
																																25 : add r5.xyz, r5.xyzx, cb1[19].xywx
																																26 : mul r6.xz, r5.xxzx, l (0.500000, 0.000000, 0.500000, 0.000000)
																																27 : mul r0.x, r5.y, cb1[46].x
																																28 : mul r6.w, r0.x, l (0.500000)
																																29 : add r5.xy, r6.zzzz, r6.xwxx
																																30 : mul r0.x, cb3[0].w, l (0.017453)
																																31 : sincos r0.x, r6.x, r0.x
																																32 : add r1.w, -r6.x, l (1.000000)
																																33 : dp3 r2.w, cb3[0].xyzx, cb3[0].xyzx
																																34 : rsq r2.w, r2.w
																																35 : mul r6.yzw, r2.wwww, cb3[0].zzyx
																																36 : mul r7.xyzw, r1.wwww, r6.wwyz
																																37 : mul r8.xyz, r0.xxxx, r6.yzwy
																																38 : mad r9.z, r7.y, r6.z, -r8.x
																																39 : mad r10.xy, r7.zyzz, r6.wzww, r8.yxyy
																																40 : mad r9.xy, r7.xwxx, r6.wzww, r6.xxxx
																																41 : mad r10.z, r7.w, r6.y, -r8.z
																																42 : mov r9.w, r10.x
																																43 : dp3 r6.x, r9.xzwx, r4.xyzx
																																44 : mov r10.w, r9.y
																																45 : dp3 r6.y, r10.ywzy, r4.xyzx
																																46 : mad r4.xy, cb1[67].xxxx, cb3[1].yyyy, r6.xyxx
																																47 : mul r4.xy, r4.xyxx, cb3[1].xxxx
																																48 : round_ni r4.zw, r4.xxxy
																																49 : frc r4.xy, r4.xyxx
																																50 : mul r7.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																																51 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																																52 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																																53 : mul r6.zw, r4.zzzw, r7.zzzw
																																54 : frc r6.zw, r6.zzzw
																																55 : mul r6.zw, r6.zzzw, r7.xxxy
																																56 : mad r0.x, r6.z, l (34.000000), l (1.000000)
																																57 : mul r0.x, r6.z, r0.x
																																58 : mul r1.w, r0.x, l (289.000000)
																																59 : ge r1.w, r1.w, -r1.w
																																60 : movc r7.xy, r1.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																																61 : mul r0.x, r0.x, r7.y
																																62 : frc r0.x, r0.x
																																63 : mad r0.x, r7.x, r0.x, r6.w
																																64 : mad r1.w, r0.x, l (34.000000), l (1.000000)
																																65 : mul r0.x, r0.x, r1.w
																																66 : mul r1.w, r0.x, l (289.000000)
																																67 : ge r1.w, r1.w, -r1.w
																																68 : movc r6.zw, r1.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																																69 : mul r0.x, r0.x, r6.w
																																70 : frc r0.x, r0.x
																																71 : mul r0.x, r0.x, r6.z
																																72 : mul r0.x, r0.x, l (0.024390)
																																73 : frc r0.x, r0.x
																																74 : mad r6.zw, r0.xxxx, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																																75 : round_ni r0.x, r6.w
																																76 : add r7.x, -r0.x, r6.z
																																77 : add r7.y, | r6.z | , l (-0.500000)
																																78 : dp2 r0.x, r7.xyxx, r7.xyxx
																																79 : rsq r0.x, r0.x
																																80 : mul r6.zw, r0.xxxx, r7.xxxy
																																81 : dp2 r0.x, r6.zwzz, r4.xyxx
																																82 : add r7.xyzw, r4.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																																83 : mul r8.xyzw, r7.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																																84 : ge r8.xyzw, r8.xyzw, -r8.xyzw
																																85 : movc r9.xyzw, r8.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																																86 : mul r6.zw, r7.xxxy, r9.zzzw
																																87 : frc r6.zw, r6.zzzw
																																88 : mul r6.zw, r6.zzzw, r9.xxxy
																																89 : mad r1.w, r6.z, l (34.000000), l (1.000000)
																																90 : mul r1.w, r6.z, r1.w
																																91 : mul r2.w, r1.w, l (289.000000)
																																92 : ge r2.w, r2.w, -r2.w
																																93 : movc r7.xy, r2.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																																94 : mul r1.w, r1.w, r7.y
																																95 : frc r1.w, r1.w
																																96 : mad r1.w, r7.x, r1.w, r6.w
																																97 : mad r2.w, r1.w, l (34.000000), l (1.000000)
																																98 : mul r1.w, r1.w, r2.w
																																99 : mul r2.w, r1.w, l (289.000000)
																															   100 : ge r2.w, r2.w, -r2.w
																															   101 : movc r6.zw, r2.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																															   102 : mul r1.w, r1.w, r6.w
																															   103 : frc r1.w, r1.w
																															   104 : mul r1.w, r1.w, r6.z
																															   105 : mul r1.w, r1.w, l (0.024390)
																															   106 : frc r1.w, r1.w
																															   107 : mad r6.zw, r1.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																															   108 : round_ni r1.w, r6.w
																															   109 : add r7.x, -r1.w, r6.z
																															   110 : add r7.y, | r6.z | , l (-0.500000)
																															   111 : dp2 r1.w, r7.xyxx, r7.xyxx
																															   112 : rsq r1.w, r1.w
																															   113 : mul r6.zw, r1.wwww, r7.xxxy
																															   114 : add r9.xyzw, r4.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																															   115 : dp2 r1.w, r6.zwzz, r9.xyxx
																															   116 : movc r8.xyzw, r8.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   117 : mul r6.zw, r7.zzzw, r8.zzzw
																															   118 : frc r6.zw, r6.zzzw
																															   119 : mul r6.zw, r6.zzzw, r8.xxxy
																															   120 : mad r2.w, r6.z, l (34.000000), l (1.000000)
																															   121 : mul r2.w, r6.z, r2.w
																															   122 : mul r3.w, r2.w, l (289.000000)
																															   123 : ge r3.w, r3.w, -r3.w
																															   124 : movc r7.xy, r3.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   125 : mul r2.w, r2.w, r7.y
																															   126 : frc r2.w, r2.w
																															   127 : mad r2.w, r7.x, r2.w, r6.w
																															   128 : mad r3.w, r2.w, l (34.000000), l (1.000000)
																															   129 : mul r2.w, r2.w, r3.w
																															   130 : mul r3.w, r2.w, l (289.000000)
																															   131 : ge r3.w, r3.w, -r3.w
																															   132 : movc r6.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																															   133 : mul r2.w, r2.w, r6.w
																															   134 : frc r2.w, r2.w
																															   135 : mul r2.w, r2.w, r6.z
																															   136 : mul r2.w, r2.w, l (0.024390)
																															   137 : frc r2.w, r2.w
																															   138 : mad r6.zw, r2.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																															   139 : round_ni r2.w, r6.w
																															   140 : add r7.x, -r2.w, r6.z
																															   141 : add r7.y, | r6.z | , l (-0.500000)
																															   142 : dp2 r2.w, r7.xyxx, r7.xyxx
																															   143 : rsq r2.w, r2.w
																															   144 : mul r6.zw, r2.wwww, r7.xxxy
																															   145 : dp2 r2.w, r6.zwzz, r9.zwzz
																															   146 : add r4.zw, r4.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
																															   147 : mul r7.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																															   148 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																															   149 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   150 : mul r4.zw, r4.zzzw, r7.zzzw
																															   151 : frc r4.zw, r4.zzzw
																															   152 : mul r4.zw, r4.zzzw, r7.xxxy
																															   153 : mad r3.w, r4.z, l (34.000000), l (1.000000)
																															   154 : mul r3.w, r4.z, r3.w
																															   155 : mul r4.z, r3.w, l (289.000000)
																															   156 : ge r4.z, r4.z, -r4.z
																															   157 : movc r6.zw, r4.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																															   158 : mul r3.w, r3.w, r6.w
																															   159 : frc r3.w, r3.w
																															   160 : mad r3.w, r6.z, r3.w, r4.w
																															   161 : mad r4.z, r3.w, l (34.000000), l (1.000000)
																															   162 : mul r3.w, r3.w, r4.z
																															   163 : mul r4.z, r3.w, l (289.000000)
																															   164 : ge r4.z, r4.z, -r4.z
																															   165 : movc r4.zw, r4.zzzz, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																															   166 : mul r3.w, r3.w, r4.w
																															   167 : frc r3.w, r3.w
																															   168 : mul r3.w, r3.w, r4.z
																															   169 : mul r3.w, r3.w, l (0.024390)
																															   170 : frc r3.w, r3.w
																															   171 : mad r4.zw, r3.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																															   172 : round_ni r3.w, r4.w
																															   173 : add r7.x, -r3.w, r4.z
																															   174 : add r7.y, | r4.z | , l (-0.500000)
																															   175 : dp2 r3.w, r7.xyxx, r7.xyxx
																															   176 : rsq r3.w, r3.w
																															   177 : mul r4.zw, r3.wwww, r7.xxxy
																															   178 : add r6.zw, r4.xxxy, l (0.000000, 0.000000, -1.000000, -1.000000)
																															   179 : dp2 r3.w, r4.zwzz, r6.zwzz
																															   180 : mul r4.zw, r4.xxxy, r4.xxxy
																															   181 : mul r4.zw, r4.xxxy, r4.zzzw
																															   182 : mad r6.zw, r4.xxxy, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
																															   183 : mad r4.xy, r4.xyxx, r6.zwzz, l (10.000000, 10.000000, 0.000000, 0.000000)
																															   184 : mul r4.xy, r4.xyxx, r4.zwzz
																															   185 : add r1.w, -r0.x, r1.w
																															   186 : mad r0.x, r4.y, r1.w, r0.x
																															   187 : add r1.w, -r2.w, r3.w
																															   188 : mad r1.w, r4.y, r1.w, r2.w
																															   189 : add r1.w, -r0.x, r1.w
																															   190 : mad r0.x, r4.x, r1.w, r0.x
																															   191 : add r0.x, r0.x, l (0.500000)
																															   192 : mul r4.xy, r6.xyxx, cb3[1].xxxx
																															   193 : round_ni r4.zw, r4.xxxy
																															   194 : frc r4.xy, r4.xyxx
																															   195 : mul r7.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																															   196 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																															   197 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   198 : mul r6.zw, r4.zzzw, r7.zzzw
																															   199 : frc r6.zw, r6.zzzw
																															   200 : mul r6.zw, r6.zzzw, r7.xxxy
																															   201 : mad r1.w, r6.z, l (34.000000), l (1.000000)
																															   202 : mul r1.w, r6.z, r1.w
																															   203 : mul r2.w, r1.w, l (289.000000)
																															   204 : ge r2.w, r2.w, -r2.w
																															   205 : movc r7.xy, r2.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   206 : mul r1.w, r1.w, r7.y
																															   207 : frc r1.w, r1.w
																															   208 : mad r1.w, r7.x, r1.w, r6.w
																															   209 : mad r2.w, r1.w, l (34.000000), l (1.000000)
																															   210 : mul r1.w, r1.w, r2.w
																															   211 : mul r2.w, r1.w, l (289.000000)
																															   212 : ge r2.w, r2.w, -r2.w
																															   213 : movc r6.zw, r2.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																															   214 : mul r1.w, r1.w, r6.w
																															   215 : frc r1.w, r1.w
																															   216 : mul r1.w, r1.w, r6.z
																															   217 : mul r1.w, r1.w, l (0.024390)
																															   218 : frc r1.w, r1.w
																															   219 : mad r6.zw, r1.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																															   220 : round_ni r1.w, r6.w
																															   221 : add r7.x, -r1.w, r6.z
																															   222 : add r7.y, | r6.z | , l (-0.500000)
																															   223 : dp2 r1.w, r7.xyxx, r7.xyxx
																															   224 : rsq r1.w, r1.w
																															   225 : mul r6.zw, r1.wwww, r7.xxxy
																															   226 : dp2 r1.w, r6.zwzz, r4.xyxx
																															   227 : add r7.xyzw, r4.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																															   228 : mul r8.xyzw, r7.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																															   229 : ge r8.xyzw, r8.xyzw, -r8.xyzw
																															   230 : movc r9.xyzw, r8.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   231 : mul r6.zw, r7.xxxy, r9.zzzw
																															   232 : frc r6.zw, r6.zzzw
																															   233 : mul r6.zw, r6.zzzw, r9.xxxy
																															   234 : mad r2.w, r6.z, l (34.000000), l (1.000000)
																															   235 : mul r2.w, r6.z, r2.w
																															   236 : mul r3.w, r2.w, l (289.000000)
																															   237 : ge r3.w, r3.w, -r3.w
																															   238 : movc r7.xy, r3.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   239 : mul r2.w, r2.w, r7.y
																															   240 : frc r2.w, r2.w
																															   241 : mad r2.w, r7.x, r2.w, r6.w
																															   242 : mad r3.w, r2.w, l (34.000000), l (1.000000)
																															   243 : mul r2.w, r2.w, r3.w
																															   244 : mul r3.w, r2.w, l (289.000000)
																															   245 : ge r3.w, r3.w, -r3.w
																															   246 : movc r6.zw, r3.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																															   247 : mul r2.w, r2.w, r6.w
																															   248 : frc r2.w, r2.w
																															   249 : mul r2.w, r2.w, r6.z
																															   250 : mul r2.w, r2.w, l (0.024390)
																															   251 : frc r2.w, r2.w
																															   252 : mad r6.zw, r2.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																															   253 : round_ni r2.w, r6.w
																															   254 : add r7.x, -r2.w, r6.z
																															   255 : add r7.y, | r6.z | , l (-0.500000)
																															   256 : dp2 r2.w, r7.xyxx, r7.xyxx
																															   257 : rsq r2.w, r2.w
																															   258 : mul r6.zw, r2.wwww, r7.xxxy
																															   259 : add r9.xyzw, r4.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																															   260 : dp2 r2.w, r6.zwzz, r9.xyxx
																															   261 : movc r8.xyzw, r8.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   262 : mul r6.zw, r7.zzzw, r8.zzzw
																															   263 : frc r6.zw, r6.zzzw
																															   264 : mul r6.zw, r6.zzzw, r8.xxxy
																															   265 : mad r3.w, r6.z, l (34.000000), l (1.000000)
																															   266 : mul r3.w, r6.z, r3.w
																															   267 : mul r5.w, r3.w, l (289.000000)
																															   268 : ge r5.w, r5.w, -r5.w
																															   269 : movc r7.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   270 : mul r3.w, r3.w, r7.y
																															   271 : frc r3.w, r3.w
																															   272 : mad r3.w, r7.x, r3.w, r6.w
																															   273 : mad r5.w, r3.w, l (34.000000), l (1.000000)
																															   274 : mul r3.w, r3.w, r5.w
																															   275 : mul r5.w, r3.w, l (289.000000)
																															   276 : ge r5.w, r5.w, -r5.w
																															   277 : movc r6.zw, r5.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																															   278 : mul r3.w, r3.w, r6.w
																															   279 : frc r3.w, r3.w
																															   280 : mul r3.w, r3.w, r6.z
																															   281 : mul r3.w, r3.w, l (0.024390)
																															   282 : frc r3.w, r3.w
																															   283 : mad r6.zw, r3.wwww, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																															   284 : round_ni r3.w, r6.w
																															   285 : add r7.x, -r3.w, r6.z
																															   286 : add r7.y, | r6.z | , l (-0.500000)
																															   287 : dp2 r3.w, r7.xyxx, r7.xyxx
																															   288 : rsq r3.w, r3.w
																															   289 : mul r6.zw, r3.wwww, r7.xxxy
																															   290 : dp2 r3.w, r6.zwzz, r9.zwzz
																															   291 : add r4.zw, r4.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
																															   292 : mul r7.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																															   293 : ge r7.xyzw, r7.xyzw, -r7.zwzw
																															   294 : movc r7.xyzw, r7.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   295 : mul r4.zw, r4.zzzw, r7.zzzw
																															   296 : frc r4.zw, r4.zzzw
																															   297 : mul r4.zw, r4.zzzw, r7.xxxy
																															   298 : mad r5.w, r4.z, l (34.000000), l (1.000000)
																															   299 : mul r4.z, r4.z, r5.w
																															   300 : mul r5.w, r4.z, l (289.000000)
																															   301 : ge r5.w, r5.w, -r5.w
																															   302 : movc r6.zw, r5.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																															   303 : mul r4.z, r4.z, r6.w
																															   304 : frc r4.z, r4.z
																															   305 : mad r4.z, r6.z, r4.z, r4.w
																															   306 : mad r4.w, r4.z, l (34.000000), l (1.000000)
																															   307 : mul r4.z, r4.z, r4.w
																															   308 : mul r4.w, r4.z, l (289.000000)
																															   309 : ge r4.w, r4.w, -r4.w
																															   310 : movc r6.zw, r4.wwww, l (0,0,289.000000,0.003460), l (0,0,-289.000000,-0.003460)
																															   311 : mul r4.z, r4.z, r6.w
																															   312 : frc r4.z, r4.z
																															   313 : mul r4.z, r4.z, r6.z
																															   314 : mul r4.z, r4.z, l (0.024390)
																															   315 : frc r4.z, r4.z
																															   316 : mad r4.zw, r4.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																															   317 : round_ni r4.w, r4.w
																															   318 : add r7.x, -r4.w, r4.z
																															   319 : add r7.y, | r4.z | , l (-0.500000)
																															   320 : dp2 r4.z, r7.xyxx, r7.xyxx
																															   321 : rsq r4.z, r4.z
																															   322 : mul r4.zw, r4.zzzz, r7.xxxy
																															   323 : add r6.zw, r4.xxxy, l (0.000000, 0.000000, -1.000000, -1.000000)
																															   324 : dp2 r4.z, r4.zwzz, r6.zwzz
																															   325 : mul r6.zw, r4.xxxy, r4.xxxy
																															   326 : mul r6.zw, r4.xxxy, r6.zzzw
																															   327 : mad r7.xy, r4.xyxx, l (6.000000, 6.000000, 0.000000, 0.000000), l (-15.000000, -15.000000, 0.000000, 0.000000)
																															   328 : mad r4.xy, r4.xyxx, r7.xyxx, l (10.000000, 10.000000, 0.000000, 0.000000)
																															   329 : mul r4.xy, r4.xyxx, r6.zwzz
																															   330 : add r2.w, -r1.w, r2.w
																															   331 : mad r1.w, r4.y, r2.w, r1.w
																															   332 : add r2.w, -r3.w, r4.z
																															   333 : mad r2.w, r4.y, r2.w, r3.w
																															   334 : add r2.w, -r1.w, r2.w
																															   335 : mad r1.w, r4.x, r2.w, r1.w
																															   336 : add r0.x, r0.x, r1.w
																															   337 : add r0.x, r0.x, l (0.500000)
																															   338 : mul_sat r0.x, r0.x, l (0.500000)
																															   339 : log r0.x, r0.x
																															   340 : mul r0.x, r0.x, cb3[5].z
																															   341 : exp r0.x, r0.x
																															   342 : add r0.x, r0.x, -cb3[2].x
																															   343 : add r4.xy, -cb3[2].zxzz, cb3[2].wyww
																															   344 : mul r0.x, r0.x, r4.x
																															   345 : div r0.x, r0.x, r4.y
																															   346 : add r0.x, r0.x, cb3[2].z
																															   347 : add r1.w, -cb3[5].x, cb3[5].y
																															   348 : add r0.x, | r0.x | , -cb3[5].x
																															   349 : div r1.w, l (1.000000, 1.000000, 1.000000, 1.000000), r1.w
																															   350 : mul_sat r0.x, r0.x, r1.w
																															   351 : mad r1.w, r0.x, l (-2.000000), l (3.000000)
																															   352 : mul r0.x, r0.x, r0.x
																															   353 : mad r4.xy, cb1[67].xxxx, cb3[6].xxxx, r6.xyxx
																															   354 : mul r4.xy, r4.xyxx, cb3[5].wwww
																															   355 : round_ni r4.zw, r4.xxxy
																															   356 : frc r4.xy, r4.xyxx
																															   357 : mul r6.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																															   358 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																															   359 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   360 : mul r6.zw, r4.zzzw, r6.zzzw
																															   361 : frc r6.zw, r6.zzzw
																															   362 : mul r6.xy, r6.zwzz, r6.xyxx
																															   363 : mad r2.w, r6.x, l (34.000000), l (1.000000)
																															   364 : mul r2.w, r6.x, r2.w
																															   365 : mul r3.w, r2.w, l (289.000000)
																															   366 : ge r3.w, r3.w, -r3.w
																															   367 : movc r6.xz, r3.wwww, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
																															   368 : mul r2.w, r2.w, r6.z
																															   369 : frc r2.w, r2.w
																															   370 : mad r2.w, r6.x, r2.w, r6.y
																															   371 : mad r3.w, r2.w, l (34.000000), l (1.000000)
																															   372 : mul r2.w, r2.w, r3.w
																															   373 : mul r3.w, r2.w, l (289.000000)
																															   374 : ge r3.w, r3.w, -r3.w
																															   375 : movc r6.xy, r3.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   376 : mul r2.w, r2.w, r6.y
																															   377 : frc r2.w, r2.w
																															   378 : mul r2.w, r2.w, r6.x
																															   379 : mul r2.w, r2.w, l (0.024390)
																															   380 : frc r2.w, r2.w
																															   381 : mad r6.xy, r2.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																															   382 : round_ni r2.w, r6.y
																															   383 : add r7.x, -r2.w, r6.x
																															   384 : add r7.y, | r6.x | , l (-0.500000)
																															   385 : dp2 r2.w, r7.xyxx, r7.xyxx
																															   386 : rsq r2.w, r2.w
																															   387 : mul r6.xy, r2.wwww, r7.xyxx
																															   388 : dp2 r2.w, r6.xyxx, r4.xyxx
																															   389 : add r6.xyzw, r4.zwzw, l (0.000000, 1.000000, 1.000000, 0.000000)
																															   390 : mul r7.xyzw, r6.xyzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																															   391 : ge r7.xyzw, r7.xyzw, -r7.xyzw
																															   392 : movc r8.xyzw, r7.xyxy, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   393 : mul r6.xy, r6.xyxx, r8.zwzz
																															   394 : frc r6.xy, r6.xyxx
																															   395 : mul r6.xy, r6.xyxx, r8.xyxx
																															   396 : mad r3.w, r6.x, l (34.000000), l (1.000000)
																															   397 : mul r3.w, r6.x, r3.w
																															   398 : mul r5.w, r3.w, l (289.000000)
																															   399 : ge r5.w, r5.w, -r5.w
																															   400 : movc r7.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   401 : mul r3.w, r3.w, r7.y
																															   402 : frc r3.w, r3.w
																															   403 : mad r3.w, r7.x, r3.w, r6.y
																															   404 : mad r5.w, r3.w, l (34.000000), l (1.000000)
																															   405 : mul r3.w, r3.w, r5.w
																															   406 : mul r5.w, r3.w, l (289.000000)
																															   407 : ge r5.w, r5.w, -r5.w
																															   408 : movc r6.xy, r5.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   409 : mul r3.w, r3.w, r6.y
																															   410 : frc r3.w, r3.w
																															   411 : mul r3.w, r3.w, r6.x
																															   412 : mul r3.w, r3.w, l (0.024390)
																															   413 : frc r3.w, r3.w
																															   414 : mad r6.xy, r3.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																															   415 : round_ni r3.w, r6.y
																															   416 : add r7.x, -r3.w, r6.x
																															   417 : add r7.y, | r6.x | , l (-0.500000)
																															   418 : dp2 r3.w, r7.xyxx, r7.xyxx
																															   419 : rsq r3.w, r3.w
																															   420 : mul r6.xy, r3.wwww, r7.xyxx
																															   421 : add r8.xyzw, r4.xyxy, l (-0.000000, -1.000000, -1.000000, -0.000000)
																															   422 : dp2 r3.w, r6.xyxx, r8.xyxx
																															   423 : movc r7.xyzw, r7.zwzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   424 : mul r6.xy, r6.zwzz, r7.zwzz
																															   425 : frc r6.xy, r6.xyxx
																															   426 : mul r6.xy, r6.xyxx, r7.xyxx
																															   427 : mad r5.w, r6.x, l (34.000000), l (1.000000)
																															   428 : mul r5.w, r6.x, r5.w
																															   429 : mul r6.x, r5.w, l (289.000000)
																															   430 : ge r6.x, r6.x, -r6.x
																															   431 : movc r6.xz, r6.xxxx, l (289.000000,0,0.003460,0), l (-289.000000,0,-0.003460,0)
																															   432 : mul r5.w, r5.w, r6.z
																															   433 : frc r5.w, r5.w
																															   434 : mad r5.w, r6.x, r5.w, r6.y
																															   435 : mad r6.x, r5.w, l (34.000000), l (1.000000)
																															   436 : mul r5.w, r5.w, r6.x
																															   437 : mul r6.x, r5.w, l (289.000000)
																															   438 : ge r6.x, r6.x, -r6.x
																															   439 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   440 : mul r5.w, r5.w, r6.y
																															   441 : frc r5.w, r5.w
																															   442 : mul r5.w, r5.w, r6.x
																															   443 : mul r5.w, r5.w, l (0.024390)
																															   444 : frc r5.w, r5.w
																															   445 : mad r6.xy, r5.wwww, l (2.000000, 2.000000, 0.000000, 0.000000), l (-1.000000, -0.500000, 0.000000, 0.000000)
																															   446 : round_ni r5.w, r6.y
																															   447 : add r7.x, -r5.w, r6.x
																															   448 : add r7.y, | r6.x | , l (-0.500000)
																															   449 : dp2 r5.w, r7.xyxx, r7.xyxx
																															   450 : rsq r5.w, r5.w
																															   451 : mul r6.xy, r5.wwww, r7.xyxx
																															   452 : dp2 r5.w, r6.xyxx, r8.zwzz
																															   453 : add r4.zw, r4.zzzw, l (0.000000, 0.000000, 1.000000, 1.000000)
																															   454 : mul r6.xyzw, r4.zwzw, l (289.000000, 289.000000, 289.000000, 289.000000)
																															   455 : ge r6.xyzw, r6.xyzw, -r6.zwzw
																															   456 : movc r6.xyzw, r6.xyzw, l (289.000000,289.000000,0.003460,0.003460), l (-289.000000,-289.000000,-0.003460,-0.003460)
																															   457 : mul r4.zw, r4.zzzw, r6.zzzw
																															   458 : frc r4.zw, r4.zzzw
																															   459 : mul r4.zw, r4.zzzw, r6.xxxy
																															   460 : mad r6.x, r4.z, l (34.000000), l (1.000000)
																															   461 : mul r4.z, r4.z, r6.x
																															   462 : mul r6.x, r4.z, l (289.000000)
																															   463 : ge r6.x, r6.x, -r6.x
																															   464 : movc r6.xy, r6.xxxx, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   465 : mul r4.z, r4.z, r6.y
																															   466 : frc r4.z, r4.z
																															   467 : mad r4.z, r6.x, r4.z, r4.w
																															   468 : mad r4.w, r4.z, l (34.000000), l (1.000000)
																															   469 : mul r4.z, r4.z, r4.w
																															   470 : mul r4.w, r4.z, l (289.000000)
																															   471 : ge r4.w, r4.w, -r4.w
																															   472 : movc r6.xy, r4.wwww, l (289.000000,0.003460,0,0), l (-289.000000,-0.003460,0,0)
																															   473 : mul r4.z, r4.z, r6.y
																															   474 : frc r4.z, r4.z
																															   475 : mul r4.z, r4.z, r6.x
																															   476 : mul r4.z, r4.z, l (0.024390)
																															   477 : frc r4.z, r4.z
																															   478 : mad r4.zw, r4.zzzz, l (0.000000, 0.000000, 2.000000, 2.000000), l (0.000000, 0.000000, -1.000000, -0.500000)
																															   479 : round_ni r4.w, r4.w
																															   480 : add r6.x, -r4.w, r4.z
																															   481 : add r6.y, | r4.z | , l (-0.500000)
																															   482 : dp2 r4.z, r6.xyxx, r6.xyxx
																															   483 : rsq r4.z, r4.z
																															   484 : mul r4.zw, r4.zzzz, r6.xxxy
																															   485 : add r6.xy, r4.xyxx, l (-1.000000, -1.000000, 0.000000, 0.000000)
																															   486 : dp2 r4.z, r4.zwzz, r6.xyxx
																															   487 : mul r6.xy, r4.xyxx, r4.xyxx
																															   488 : mul r6.xy, r4.xyxx, r6.xyxx
																															   489 : mad r6.zw, r4.xxxy, l (0.000000, 0.000000, 6.000000, 6.000000), l (0.000000, 0.000000, -15.000000, -15.000000)
																															   490 : mad r4.xy, r4.xyxx, r6.zwzz, l (10.000000, 10.000000, 0.000000, 0.000000)
																															   491 : mul r4.xy, r4.xyxx, r6.xyxx
																															   492 : add r3.w, -r2.w, r3.w
																															   493 : mad r2.w, r4.y, r3.w, r2.w
																															   494 : add r3.w, -r5.w, r4.z
																															   495 : mad r3.w, r4.y, r3.w, r5.w
																															   496 : add r3.w, -r2.w, r3.w
																															   497 : mad r2.w, r4.x, r3.w, r2.w
																															   498 : add r2.w, r2.w, l (0.500000)
																															   499 : mul r2.w, r2.w, cb3[6].y
																															   500 : mad r0.x, r1.w, r0.x, r2.w
																															   501 : add r1.w, cb3[6].y, l (1.000000)
																															   502 : div r0.x, r0.x, r1.w
																															   503 : add r4.xyz, cb3[3].xyzx, -cb3[4].xyzx
																															   504 : mad r4.xyz, r0.xxxx, r4.xyzx, cb3[4].xyzx
																															   505 : dp3 r1.w, r2.xyzx, r2.xyzx
																															   506 : rsq r1.w, r1.w
																															   507 : mul r6.xyz, r1.wwww, r2.xyzx
																															   508 : dp3_sat r1.w, r6.xyzx, r3.xyzx
																															   509 : add r1.w, -r1.w, l (1.000000)
																															   510 : log r1.w, r1.w
																															   511 : mul r1.w, r1.w, cb3[7].x
																															   512 : exp r1.w, r1.w
																															   513 : mul r0.x, r0.x, r1.w
																															   514 : mad r3.xyz, r0.xxxx, cb3[7].yyyy, r4.xyzx
																															   515 : div r4.xy, r5.xyxx, r5.zzzz
																															   516 : mul r4.xy, r4.xyxx, cb1[42].xyxx
																															   517 : ftou r4.xy, r4.xyxx
																															   518 : mov r4.zw, l (0,0,0,0)
																															   519 : ld_indexable (texture2darray)(float,float,float,float) r0.x, r4.xyzw, t0.xyzw
																															   520 : mad r0.x, cb1[45].z, r0.x, cb1[45].w
																															   521 : div r0.x, l (1.000000, 1.000000, 1.000000, 1.000000), r0.x
																															   522 : add r1.w, r5.z, l (-1.000000)
																															   523 : add r0.x, r0.x, -r1.w
																															   524 : div r0.x, r0.x, cb3[7].z
																															   525 : mov_sat r4.xyz, r0.xxxx
																															   526 : mul r5.xyz, r3.xyzx, cb3[6].zzzz
																															   527 : ld_indexable (texture2d)(float,float,float,float) r0.x, l (0, 0, 0, 0), t1.xyzw
																															   528 : mul r0.x, r0.x, cb1[449].y
																															   529 : mad r6.xyz, r5.xyzx, r0.xxxx, r3.xyzx
																															   530 : movc r0.x, cb1[448].y, l (0), r4.z
																															   531 : ftoi r1.w, cb2[1].x
																															   532 : mad r1.xyz, r1.xyzx, l (0.500000, 0.500000, 0.500000, 0.000000), l (0.500000, 0.500000, 0.500000, 0.000000)
																															   533 : mad r0.yzw, r0.yyzw, l (0.000000, 0.500000, 0.500000, 0.500000), l (0.000000, 0.500000, 0.500000, 0.500000)
																															   534 : mad r2.xyz, r2.xyzx, l (0.500000, 0.500000, 0.500000, 0.000000), l (0.500000, 0.500000, 0.500000, 0.000000)
																															   535 : mov r3.w, l (-1)
																															   536 : mov r7.w, l (1.000000)
																															   537 : mov r8.y, l (0)
																															   538 : mov r9.xyz, r6.xyzx
																															   539 : mov r9.w, r0.x
																															   540 : mov r2.w, l (1)
																															   541 : loop
																															   542 : ilt r4.w, r1.w, r2.w
																															   543 : breakc_nz r4.w
																															   544 : ftoi r4.w, cb2[r2.w + 1].x
																															   545 : if_nz r4.w
																															   546 : switch r4.w
																															   547 : case l (16)
																															   548:       mov r8.xz, l (0,0,0,0)
																															   549 : break
																															   550 : case l (17)
																															   551:       mov r8.xz, l (0,0,0,0)
																															   552 : break
																															   553 : case l (18)
																															   554:       mov r8.xz, l (0,0,0,0)
																															   555 : break
																															   556 : case l (19)
																															   557:       mov r8.xz, l (0,0,0,0)
																															   558 : break
																															   559 : case l (20)
																															   560:       mov r8.xz, l (0,0,0,0)
																															   561 : break
																															   562 : case l (21)
																															   563:       mov r8.xz, l (0,0,0,0)
																															   564 : break
																															   565 : case l (22)
																															   566:       mov r8.xz, l (0,0,0,0)
																															   567 : break
																															   568 : default
																															   569 : mov r8.xz, l (1.000000,0,1.000000,0)
																															   570 : break
																															   571 : endswitch
																															   572 : switch r4.w
																															   573 : case l (1)
																															   574:       mov r10.xyzw, l (0,0,0,0)
																															   575 : break
																															   576 : case l (2)
																															   577:       mov r10.xyzw, l (0,0,0,0)
																															   578 : break
																															   579 : case l (3)
																															   580:       mov r10.xyzw, l (0,0,0,0)
																															   581 : break
																															   582 : case l (4)
																															   583:       mov r10.xyzw, l (0,0,0,0)
																															   584 : break
																															   585 : case l (5)
																															   586:       mov r10.xyz, r1.xyzx
																															   587 : mov r10.w, l (0)
																															   588 : break
																															   589 : case l (6)
																															   590:       mov r10.xyz, r0.yzwy
																															   591 : mov r10.w, l (0)
																															   592 : break
																															   593 : case l (7)
																															   594:       mov r10.xyz, r2.xyzx
																															   595 : mov r10.w, l (0)
																															   596 : break
																															   597 : case l (8)
																															   598:       mov r10.xyzw, l (0,0,0,-1)
																															   599 : break
																															   600 : case l (9)
																															   601:       mov r10.xyzw, l (0,0,0,0)
																															   602 : break
																															   603 : default
																															   604 : mov r10.xyz, r8.xyzx
																															   605 : mov r10.w, l (0)
																															   606 : break
																															   607 : endswitch
																															   608 : switch r4.w
																															   609 : case l (100)
																															   610:       mov r10.xyz, r4.xyzx
																															   611 : break
																															   612 : case l (101)
																															   613:       mov r10.xyzw, l (0,0,0,-1)
																															   614 : break
																															   615 : case l (102)
																															   616:       mov r10.xyzw, l (0,0,0,-1)
																															   617 : break
																															   618 : case l (103)
																															   619:       mov r10.xyz, l (0,0,0,0)
																															   620 : break
																															   621 : case l (104)
																															   622:       mov r10.xyz, l (0,0,0,0)
																															   623 : break
																															   624 : case l (105)
																															   625:       mov r10.xyz, l (0,0,0,0)
																															   626 : break
																															   627 : case l (106)
																															   628:       mov r10.xyz, l (0,0,0,0)
																															   629 : break
																															   630 : case l (107)
																															   631:       mov r10.xyz, r5.xyzx
																															   632 : break
																															   633 : case l (108)
																															   634:       mov r10.xyz, l (0,0,0,0)
																															   635 : break
																															   636 : case l (109)
																															   637:       mov r10.xyz, l (0,0,0,0)
																															   638 : break
																															   639 : case l (110)
																															   640:       mov r10.xyz, l (0,0,0,0)
																															   641 : break
																															   642 : case l (111)
																															   643:       mov r10.xyz, l (1.000000,0.500000,0.500000,0)
																															   644 : break
																															   645 : case l (112)
																															   646:       mov r10.xyz, l (0,0,0,0)
																															   647 : break
																															   648 : default
																															   649 : break
																															   650 : endswitch
																															   651 : switch r4.w
																															   652 : case l (101)
																															   653:       mov r10.xyzw, l (0,0,0,-1)
																															   654 : break
																															   655 : case l (112)
																															   656:       mov r10.xyz, l (0,0,0,0)
																															   657 : break
																															   658 : case l (109)
																															   659:       mov r10.xyz, l (0.500000,0.500000,0.500000,0)
																															   660 : break
																															   661 : default
																															   662 : break
																															   663 : endswitch
																															   664 : ieq r8.xz, r4.wwww, l (300, 0, 350, 0)
																															   665 : or r4.w, r8.z, r8.x
																															   666 : movc r10.xyzw, r4.wwww, r3.xyzw, r10.xyzw
																															   667 : max r8.xzw, r10.xxyz, l (0.000000, 0.000000, 0.000000, 0.000000)
																															   668 : mul r11.xyz, r8.xzwx, l (0.077399, 0.077399, 0.077399, 0.000000)
																															   669 : add r12.xyz, r8.xzwx, l (0.055000, 0.055000, 0.055000, 0.000000)
																															   670 : mul r12.xyz, r12.xyzx, l (0.947867, 0.947867, 0.947867, 0.000000)
																															   671 : log r12.xyz, r12.xyzx
																															   672 : mul r12.xyz, r12.xyzx, l (2.400000, 2.400000, 2.400000, 0.000000)
																															   673 : exp r12.xyz, r12.xyzx
																															   674 : ge r8.xzw, l (0.040450, 0.000000, 0.040450, 0.040450), r8.xxzw
																															   675 : movc r8.xzw, r8.xxzw, r11.xxyz, r12.xxyz
																															   676 : movc r7.xyz, r10.wwww, r10.xyzx, r8.xzwx
																															   677 : mov r9.xyzw, r7.xyzw
																															   678 : endif
																															   679 : iadd r2.w, r2.w, l (1)
																															   680 : endloop
																															   681 : ieq r0.x, cb2[12].z, l (20)
																															   682 : movc o0.xyzw, r0.xxxx, cb2[12].wwww, r9.xyzw
																															   683 : ret
																																		// Approximately 0 instruction slots used


																																		 }
	}
		CustomEditor "UnityEditor.Rendering.HighDefinition.HDUnlitGUI"
																																		Fallback "Hidden/Shader Graph/FallbackError"
}