// Shader created with Shader Forge v1.29 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.29;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:233,x:35917,y:32382,varname:node_233,prsc:2|emission-2842-OUT;n:type:ShaderForge.SFN_Tex2d,id:4351,x:33952,y:32466,ptovrint:False,ptlb:Atlas,ptin:_Atlas,varname:_Atlas,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1307-OUT;n:type:ShaderForge.SFN_Vector1,id:3781,x:31906,y:31885,varname:_Unit,prsc:2,v1:1;n:type:ShaderForge.SFN_TexCoord,id:8972,x:31791,y:32463,varname:node_8972,prsc:2,uv:0;n:type:ShaderForge.SFN_Divide,id:4791,x:32439,y:31895,cmnt:Unit,varname:node_4791,prsc:2|A-3781-OUT,B-4855-OUT;n:type:ShaderForge.SFN_Tex2d,id:4741,x:32566,y:32129,ptovrint:False,ptlb:Map,ptin:_Map,varname:_Map,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ceb6cbcf045c58147b1976e30e8fdb47,ntxv:2,isnm:False|UVIN-8972-UVOUT;n:type:ShaderForge.SFN_Floor,id:8330,x:32990,y:31909,cmnt:Index,varname:node_8330,prsc:2|IN-8303-OUT;n:type:ShaderForge.SFN_Floor,id:2511,x:33377,y:32359,varname:node_2511,prsc:2|IN-940-OUT;n:type:ShaderForge.SFN_Fmod,id:6221,x:33014,y:32285,varname:node_6221,prsc:2|A-8330-OUT,B-4855-OUT;n:type:ShaderForge.SFN_Divide,id:7659,x:33014,y:32409,varname:node_7659,prsc:2|A-8330-OUT,B-4855-OUT;n:type:ShaderForge.SFN_Append,id:940,x:33200,y:32359,varname:node_940,prsc:2|A-6221-OUT,B-7659-OUT;n:type:ShaderForge.SFN_Multiply,id:1215,x:33634,y:32260,cmnt:BaseTile position,varname:node_1215,prsc:2|A-2511-OUT,B-4791-OUT;n:type:ShaderForge.SFN_Multiply,id:7852,x:32575,y:32534,varname:node_7852,prsc:2|A-5584-R,B-2854-OUT;n:type:ShaderForge.SFN_Fmod,id:6607,x:33036,y:32585,varname:node_6607,prsc:2|A-9275-OUT,B-3781-OUT;n:type:ShaderForge.SFN_Multiply,id:4795,x:33555,y:32585,cmnt:Internal POsition,varname:node_4795,prsc:2|A-6607-OUT,B-4791-OUT;n:type:ShaderForge.SFN_Add,id:1307,x:33857,y:32271,varname:node_1307,prsc:2|A-1215-OUT,B-4795-OUT;n:type:ShaderForge.SFN_Multiply,id:8303,x:32796,y:32046,varname:node_8303,prsc:2|A-9794-OUT,B-4741-R;n:type:ShaderForge.SFN_Vector1,id:9794,x:32566,y:32046,varname:node_9794,prsc:2,v1:256;n:type:ShaderForge.SFN_If,id:1233,x:34202,y:32636,varname:node_1233,prsc:2|A-4351-R,B-4597-OUT,GT-4597-OUT,EQ-4597-OUT,LT-3429-OUT;n:type:ShaderForge.SFN_If,id:7939,x:34202,y:32765,varname:node_7939,prsc:2|A-4351-B,B-4597-OUT,GT-4597-OUT,EQ-4597-OUT,LT-3429-OUT;n:type:ShaderForge.SFN_Vector1,id:4597,x:33978,y:32896,varname:node_4597,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:3429,x:33978,y:32997,varname:node_3429,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:1439,x:34417,y:32697,varname:node_1439,prsc:2|A-1233-OUT,B-7939-OUT;n:type:ShaderForge.SFN_Vector1,id:4569,x:34417,y:32852,varname:node_4569,prsc:2,v1:2;n:type:ShaderForge.SFN_If,id:323,x:34651,y:32852,varname:node_323,prsc:2|A-1439-OUT,B-4569-OUT,GT-4597-OUT,EQ-4597-OUT,LT-3429-OUT;n:type:ShaderForge.SFN_OneMinus,id:678,x:35132,y:32775,varname:node_678,prsc:2|IN-323-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5584,x:32074,y:32559,varname:node_5584,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8972-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3097,x:32577,y:32653,varname:node_3097,prsc:2|A-5584-G,B-5486-OUT;n:type:ShaderForge.SFN_Append,id:9275,x:32814,y:32633,varname:node_9275,prsc:2|A-7852-OUT,B-3097-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2854,x:31842,y:32123,ptovrint:False,ptlb:ScreenWidth,ptin:_ScreenWidth,varname:node_2854,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:24;n:type:ShaderForge.SFN_ValueProperty,id:5486,x:31842,y:32257,ptovrint:False,ptlb:ScreenHeight,ptin:_ScreenHeight,varname:node_5486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Slider,id:1414,x:35205,y:32171,ptovrint:False,ptlb:Brightness,ptin:_Brightness,varname:node_1414,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:2842,x:35580,y:32279,varname:node_2842,prsc:2|A-1414-OUT,B-4181-OUT;n:type:ShaderForge.SFN_Color,id:5581,x:34981,y:32476,ptovrint:False,ptlb:ScreenBackgroundColor,ptin:_ScreenBackgroundColor,varname:node_5581,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:4181,x:35233,y:32409,varname:node_4181,prsc:2|A-3505-OUT,B-5581-RGB;n:type:ShaderForge.SFN_Color,id:7984,x:34313,y:32228,ptovrint:False,ptlb:TextColor,ptin:_TextColor,varname:node_7984,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:5261,x:34642,y:32339,varname:node_5261,prsc:2|A-7984-RGB,B-4351-RGB;n:type:ShaderForge.SFN_Vector1,id:4855,x:31842,y:32003,varname:node_4855,prsc:2,v1:16;n:type:ShaderForge.SFN_Tex2d,id:3986,x:34642,y:32175,ptovrint:False,ptlb:Pixel,ptin:_Pixel,varname:node_3986,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False|UVIN-7013-OUT;n:type:ShaderForge.SFN_TexCoord,id:6357,x:33933,y:31873,varname:node_6357,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:9874,x:33933,y:32035,ptovrint:False,ptlb:PixelWidth,ptin:_PixelWidth,varname:node_9874,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:1582,x:33933,y:32121,ptovrint:False,ptlb:PixelHeight,ptin:_PixelHeight,varname:node_1582,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:628,x:34159,y:31915,varname:node_628,prsc:2|A-6357-U,B-9874-OUT;n:type:ShaderForge.SFN_Multiply,id:1467,x:34159,y:32046,varname:node_1467,prsc:2|A-6357-V,B-1582-OUT;n:type:ShaderForge.SFN_Append,id:7013,x:34330,y:31979,varname:node_7013,prsc:2|A-628-OUT,B-1467-OUT;n:type:ShaderForge.SFN_Multiply,id:1352,x:34976,y:32072,varname:node_1352,prsc:2|A-3986-RGB,B-5261-OUT;n:type:ShaderForge.SFN_Blend,id:3505,x:34994,y:32272,varname:node_3505,prsc:2,blmd:10,clmp:True|SRC-3986-RGB,DST-5261-OUT;proporder:2854-5486-4351-4741-1414-5581-7984-3986-9874-1582;pass:END;sub:END;*/

Shader "Skreen/01" {
    Properties {
        _ScreenWidth ("ScreenWidth", Float ) = 24
        _ScreenHeight ("ScreenHeight", Float ) = 8
        _Atlas ("Atlas", 2D) = "white" {}
        _Map ("Map", 2D) = "black" {}
        _Brightness ("Brightness", Range(0, 3)) = 1
        _ScreenBackgroundColor ("ScreenBackgroundColor", Color) = (0,0,0,1)
        _TextColor ("TextColor", Color) = (0.5,0.5,0.5,1)
        _Pixel ("Pixel", 2D) = "bump" {}
        _PixelWidth ("PixelWidth", Float ) = 0
        _PixelHeight ("PixelHeight", Float ) = 0
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
            uniform sampler2D _Atlas; uniform float4 _Atlas_ST;
            uniform sampler2D _Map; uniform float4 _Map_ST;
            uniform float _ScreenWidth;
            uniform float _ScreenHeight;
            uniform float _Brightness;
            uniform float4 _ScreenBackgroundColor;
            uniform float4 _TextColor;
            uniform sampler2D _Pixel; uniform float4 _Pixel_ST;
            uniform float _PixelWidth;
            uniform float _PixelHeight;
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
                float2 node_7013 = float2((i.uv0.r*_PixelWidth),(i.uv0.g*_PixelHeight));
                float4 _Pixel_var = tex2D(_Pixel,TRANSFORM_TEX(node_7013, _Pixel));
                float4 _Map_var = tex2D(_Map,TRANSFORM_TEX(i.uv0, _Map));
                float node_8330 = floor((256.0*_Map_var.r)); // Index
                float node_4855 = 16.0;
                float _Unit = 1.0;
                float node_4791 = (_Unit/node_4855); // Unit
                float2 node_5584 = i.uv0.rg;
                float2 node_1307 = ((floor(float2(fmod(node_8330,node_4855),(node_8330/node_4855)))*node_4791)+(fmod(float2((node_5584.r*_ScreenWidth),(node_5584.g*_ScreenHeight)),_Unit)*node_4791));
                float4 _Atlas_var = tex2D(_Atlas,TRANSFORM_TEX(node_1307, _Atlas));
                float3 node_5261 = (_TextColor.rgb*_Atlas_var.rgb);
                float3 emissive = (_Brightness*(saturate(( node_5261 > 0.5 ? (1.0-(1.0-2.0*(node_5261-0.5))*(1.0-_Pixel_var.rgb)) : (2.0*node_5261*_Pixel_var.rgb) ))+_ScreenBackgroundColor.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
