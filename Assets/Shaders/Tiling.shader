// Shader created with Shader Forge v1.29 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.29;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:2,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:233,x:35917,y:32382,varname:node_233,prsc:2|emission-3687-OUT;n:type:ShaderForge.SFN_Vector4Property,id:1460,x:31861,y:32083,ptovrint:False,ptlb:Input,ptin:_Input,cmnt:x - tiles on atlas y - tiles on map,varname:_Input,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2,v2:8,v3:1,v4:1024;n:type:ShaderForge.SFN_Tex2d,id:4351,x:33952,y:32466,ptovrint:False,ptlb:Atlas,ptin:_Atlas,varname:_Atlas,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1307-OUT;n:type:ShaderForge.SFN_Vector1,id:3781,x:31906,y:31885,varname:_Unit,prsc:2,v1:1;n:type:ShaderForge.SFN_TexCoord,id:8972,x:31878,y:32375,varname:node_8972,prsc:2,uv:0;n:type:ShaderForge.SFN_Divide,id:4791,x:32439,y:31895,cmnt:Unit,varname:node_4791,prsc:2|A-3781-OUT,B-1460-X;n:type:ShaderForge.SFN_Tex2d,id:4741,x:32566,y:32129,ptovrint:False,ptlb:Map,ptin:_Map,varname:_Map,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-5956-OUT;n:type:ShaderForge.SFN_Divide,id:5956,x:32363,y:32235,cmnt:TilePos,varname:node_5956,prsc:2|A-8972-UVOUT,B-3781-OUT;n:type:ShaderForge.SFN_Floor,id:8330,x:32990,y:31909,cmnt:Index,varname:node_8330,prsc:2|IN-8303-OUT;n:type:ShaderForge.SFN_Floor,id:2511,x:33377,y:32359,varname:node_2511,prsc:2|IN-940-OUT;n:type:ShaderForge.SFN_Fmod,id:6221,x:33014,y:32285,varname:node_6221,prsc:2|A-8330-OUT,B-1460-X;n:type:ShaderForge.SFN_Divide,id:7659,x:33014,y:32409,varname:node_7659,prsc:2|A-8330-OUT,B-1460-X;n:type:ShaderForge.SFN_Append,id:940,x:33200,y:32359,varname:node_940,prsc:2|A-6221-OUT,B-7659-OUT;n:type:ShaderForge.SFN_Multiply,id:1215,x:33634,y:32260,cmnt:BaseTile position,varname:node_1215,prsc:2|A-2511-OUT,B-4791-OUT;n:type:ShaderForge.SFN_Multiply,id:7852,x:32584,y:32608,varname:node_7852,prsc:2|A-8972-UVOUT,B-1460-Y;n:type:ShaderForge.SFN_Fmod,id:6607,x:33030,y:32570,varname:node_6607,prsc:2|A-7852-OUT,B-3781-OUT;n:type:ShaderForge.SFN_Multiply,id:4795,x:33507,y:32565,cmnt:Internal POsition,varname:node_4795,prsc:2|A-6607-OUT,B-4791-OUT;n:type:ShaderForge.SFN_Add,id:1307,x:33854,y:32137,varname:node_1307,prsc:2|A-1215-OUT,B-4795-OUT;n:type:ShaderForge.SFN_Multiply,id:8303,x:32796,y:32046,varname:node_8303,prsc:2|A-9794-OUT,B-4741-B;n:type:ShaderForge.SFN_Vector1,id:9794,x:32566,y:32046,varname:node_9794,prsc:2,v1:256;n:type:ShaderForge.SFN_If,id:1233,x:34202,y:32636,varname:node_1233,prsc:2|A-4351-R,B-4597-OUT,GT-4597-OUT,EQ-4597-OUT,LT-3429-OUT;n:type:ShaderForge.SFN_If,id:7939,x:34202,y:32765,varname:node_7939,prsc:2|A-4351-B,B-4597-OUT,GT-4597-OUT,EQ-4597-OUT,LT-3429-OUT;n:type:ShaderForge.SFN_Vector1,id:4597,x:33978,y:32896,varname:node_4597,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:3429,x:33978,y:32997,varname:node_3429,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:1439,x:34417,y:32697,varname:node_1439,prsc:2|A-1233-OUT,B-7939-OUT;n:type:ShaderForge.SFN_Vector1,id:4569,x:34417,y:32852,varname:node_4569,prsc:2,v1:2;n:type:ShaderForge.SFN_If,id:323,x:34651,y:32852,varname:node_323,prsc:2|A-1439-OUT,B-4569-OUT,GT-4597-OUT,EQ-4597-OUT,LT-3429-OUT;n:type:ShaderForge.SFN_OneMinus,id:678,x:35204,y:32664,varname:node_678,prsc:2|IN-323-OUT;n:type:ShaderForge.SFN_AmbientLight,id:7720,x:34703,y:32294,varname:node_7720,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3687,x:35156,y:32459,varname:node_3687,prsc:2|A-7720-RGB,B-4351-RGB;proporder:4351-1460-4741;pass:END;sub:END;*/

Shader "DK/Tiling" {
    Properties {
        _Atlas ("Atlas", 2D) = "white" {}
        _Input ("Input", Vector) = (2,8,1,1024)
        _Map ("Map", 2D) = "black" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Input;
            uniform sampler2D _Atlas; uniform float4 _Atlas_ST;
            uniform sampler2D _Map; uniform float4 _Map_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float _Unit = 1.0;
                float2 node_5956 = (i.uv0/_Unit); // TilePos
                float4 _Map_var = tex2D(_Map,TRANSFORM_TEX(node_5956, _Map));
                float node_8330 = floor((256.0*_Map_var.b)); // Index
                float node_4791 = (_Unit/_Input.r); // Unit
                float2 node_1307 = ((floor(float2(fmod(node_8330,_Input.r),(node_8330/_Input.r)))*node_4791)+(fmod((i.uv0*_Input.g),_Unit)*node_4791));
                float4 _Atlas_var = tex2D(_Atlas,TRANSFORM_TEX(node_1307, _Atlas));
                float3 emissive = (UNITY_LIGHTMODEL_AMBIENT.rgb*_Atlas_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
