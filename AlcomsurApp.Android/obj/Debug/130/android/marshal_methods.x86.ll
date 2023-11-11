; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [238 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 64
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 93
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 12
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 88
	i32 88799905, ; 4: Acr.UserDialogs => 0x54afaa1 => 4
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 78
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 78
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 45
	i32 166922606, ; 8: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 29
	i32 172012715, ; 9: FastAndroidCamera.dll => 0xa40b4ab => 7
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 79
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 43
	i32 219130465, ; 12: Xamarin.Android.Support.v4 => 0xd0faa61 => 34
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 112
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 59
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 118
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 107
	i32 261689757, ; 17: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 48
	i32 278686392, ; 18: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 63
	i32 280482487, ; 19: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 57
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 35
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 22
	i32 334355562, ; 22: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 96
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 61
	i32 347068432, ; 24: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 16
	i32 385762202, ; 25: System.Memory.dll => 0x16fe439a => 21
	i32 389971796, ; 26: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 30
	i32 441335492, ; 27: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 47
	i32 442521989, ; 28: Xamarin.Essentials => 0x1a605985 => 87
	i32 442565967, ; 29: System.Collections => 0x1a61054f => 110
	i32 450948140, ; 30: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 56
	i32 465846621, ; 31: mscorlib => 0x1bc4415d => 11
	i32 469710990, ; 32: System.dll => 0x1bff388e => 20
	i32 476646585, ; 33: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 57
	i32 486930444, ; 34: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 68
	i32 498788369, ; 35: System.ObjectModel => 0x1dbae811 => 113
	i32 514659665, ; 36: Xamarin.Android.Support.Compat => 0x1ead1551 => 29
	i32 526420162, ; 37: System.Transactions.dll => 0x1f6088c2 => 102
	i32 545304856, ; 38: System.Runtime.Extensions => 0x2080b118 => 111
	i32 605376203, ; 39: System.IO.Compression.FileSystem => 0x24154ecb => 105
	i32 627609679, ; 40: Xamarin.AndroidX.CustomView => 0x2568904f => 52
	i32 663517072, ; 41: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 84
	i32 666292255, ; 42: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 40
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 27
	i32 691439157, ; 44: Acr.UserDialogs.dll => 0x29368635 => 4
	i32 692692150, ; 45: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 28
	i32 748832960, ; 46: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 14
	i32 775507847, ; 47: System.IO.Compression => 0x2e394f87 => 104
	i32 809851609, ; 48: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 49: Xamarin.AndroidX.Print => 0x3246f6cd => 75
	i32 877678880, ; 50: System.Globalization.dll => 0x34505120 => 118
	i32 882883187, ; 51: Xamarin.Android.Support.v4.dll => 0x349fba73 => 34
	i32 890242619, ; 52: AlcomsurApp.dll => 0x3510063b => 5
	i32 928116545, ; 53: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 93
	i32 954320159, ; 54: ZXing.Net.Mobile.Forms => 0x38e1c51f => 96
	i32 955402788, ; 55: Newtonsoft.Json => 0x38f24a24 => 12
	i32 958213972, ; 56: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 33
	i32 967690846, ; 57: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 61
	i32 974778368, ; 58: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 992768348, ; 59: System.Collections.dll => 0x3b2c715c => 110
	i32 1012816738, ; 60: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 77
	i32 1035644815, ; 61: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 39
	i32 1042160112, ; 62: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 90
	i32 1052210849, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 65
	i32 1098259244, ; 64: System => 0x41761b2c => 20
	i32 1134191450, ; 65: ZXingNetMobile.dll => 0x439a635a => 98
	i32 1175144683, ; 66: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 82
	i32 1178241025, ; 67: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 72
	i32 1204270330, ; 68: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 40
	i32 1267360935, ; 69: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 83
	i32 1292207520, ; 70: SQLitePCLRaw.core.dll => 0x4d0585a0 => 15
	i32 1293217323, ; 71: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 54
	i32 1364015309, ; 72: System.IO => 0x514d38cd => 116
	i32 1365406463, ; 73: System.ServiceModel.Internals.dll => 0x516272ff => 99
	i32 1376866003, ; 74: Xamarin.AndroidX.SavedState => 0x52114ed3 => 77
	i32 1395857551, ; 75: Xamarin.AndroidX.Media.dll => 0x5333188f => 69
	i32 1406073936, ; 76: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 49
	i32 1411638395, ; 77: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 24
	i32 1445445088, ; 78: Xamarin.Android.Support.Fragment => 0x5627bde0 => 32
	i32 1457743152, ; 79: System.Runtime.Extensions.dll => 0x56e36530 => 111
	i32 1460219004, ; 80: Xamarin.Forms.Xaml => 0x57092c7c => 91
	i32 1462112819, ; 81: System.IO.Compression.dll => 0x57261233 => 104
	i32 1469204771, ; 82: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 38
	i32 1477029573, ; 83: AlcomsurApp => 0x5809aec5 => 5
	i32 1543031311, ; 84: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 117
	i32 1571005899, ; 85: zxing.portable => 0x5da3a5cb => 97
	i32 1574652163, ; 86: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 31
	i32 1582372066, ; 87: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 53
	i32 1592978981, ; 88: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 89: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 67
	i32 1624863272, ; 90: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 86
	i32 1636350590, ; 91: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 51
	i32 1639515021, ; 92: System.Net.Http.dll => 0x61b9038d => 2
	i32 1639986890, ; 93: System.Text.RegularExpressions => 0x61c036ca => 117
	i32 1657153582, ; 94: System.Runtime => 0x62c6282e => 25
	i32 1658241508, ; 95: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 80
	i32 1658251792, ; 96: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 92
	i32 1670060433, ; 97: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 48
	i32 1701541528, ; 98: System.Diagnostics.Debug.dll => 0x656b7698 => 112
	i32 1711441057, ; 99: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 16
	i32 1729485958, ; 100: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 44
	i32 1766324549, ; 101: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 79
	i32 1776026572, ; 102: System.Core.dll => 0x69dc03cc => 19
	i32 1788241197, ; 103: Xamarin.AndroidX.Fragment => 0x6a96652d => 56
	i32 1808609942, ; 104: Xamarin.AndroidX.Loader => 0x6bcd3296 => 67
	i32 1813201214, ; 105: Xamarin.Google.Android.Material => 0x6c13413e => 92
	i32 1818569960, ; 106: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 73
	i32 1867746548, ; 107: Xamarin.Essentials.dll => 0x6f538cf4 => 87
	i32 1878053835, ; 108: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 91
	i32 1885316902, ; 109: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 41
	i32 1904184254, ; 110: FastAndroidCamera => 0x717f8bbe => 7
	i32 1919157823, ; 111: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 70
	i32 2011961780, ; 112: System.Buffers.dll => 0x77ec19b4 => 18
	i32 2019465201, ; 113: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 65
	i32 2055257422, ; 114: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 62
	i32 2079903147, ; 115: System.Runtime.dll => 0x7bf8cdab => 25
	i32 2090596640, ; 116: System.Numerics.Vectors => 0x7c9bf920 => 23
	i32 2097448633, ; 117: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 58
	i32 2103459038, ; 118: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 17
	i32 2126786730, ; 119: Xamarin.Forms.Platform.Android => 0x7ec430aa => 89
	i32 2166116741, ; 120: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 31
	i32 2193016926, ; 121: System.ObjectModel.dll => 0x82b6c85e => 113
	i32 2201231467, ; 122: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 123: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 82
	i32 2244775296, ; 124: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 68
	i32 2256548716, ; 125: Xamarin.AndroidX.MultiDex => 0x8680336c => 70
	i32 2261435625, ; 126: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 60
	i32 2279755925, ; 127: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 76
	i32 2315684594, ; 128: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 36
	i32 2329204181, ; 129: zxing.portable.dll => 0x8ad4d5d5 => 97
	i32 2330457430, ; 130: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 30
	i32 2341995103, ; 131: ZXingNetMobile => 0x8b98025f => 98
	i32 2373288475, ; 132: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 32
	i32 2409053734, ; 133: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 74
	i32 2431243866, ; 134: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 94
	i32 2454642406, ; 135: System.Text.Encoding.dll => 0x924edee6 => 115
	i32 2465273461, ; 136: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 14
	i32 2465532216, ; 137: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 47
	i32 2471841756, ; 138: netstandard.dll => 0x93554fdc => 100
	i32 2475788418, ; 139: Java.Interop.dll => 0x93918882 => 9
	i32 2482213323, ; 140: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 95
	i32 2501346920, ; 141: System.Data.DataSetExtensions => 0x95178668 => 103
	i32 2505896520, ; 142: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 64
	i32 2563143864, ; 143: AndHUD.dll => 0x98c678b8 => 6
	i32 2581819634, ; 144: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 83
	i32 2620871830, ; 145: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 51
	i32 2624644809, ; 146: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 55
	i32 2633051222, ; 147: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 63
	i32 2693849962, ; 148: System.IO.dll => 0xa090e36a => 116
	i32 2701096212, ; 149: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 80
	i32 2715334215, ; 150: System.Threading.Tasks.dll => 0xa1d8b647 => 109
	i32 2724279855, ; 151: AlcomsurApp.Android.dll => 0xa261362f => 0
	i32 2732626843, ; 152: Xamarin.AndroidX.Activity => 0xa2e0939b => 35
	i32 2737747696, ; 153: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 38
	i32 2766581644, ; 154: Xamarin.Forms.Core => 0xa4e6af8c => 88
	i32 2778768386, ; 155: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 85
	i32 2810250172, ; 156: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 49
	i32 2819470561, ; 157: System.Xml.dll => 0xa80db4e1 => 26
	i32 2853208004, ; 158: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 85
	i32 2855708567, ; 159: Xamarin.AndroidX.Transition => 0xaa36a797 => 81
	i32 2903344695, ; 160: System.ComponentModel.Composition => 0xad0d8637 => 106
	i32 2905242038, ; 161: mscorlib.dll => 0xad2a79b6 => 11
	i32 2916838712, ; 162: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 86
	i32 2919462931, ; 163: System.Numerics.Vectors.dll => 0xae037813 => 23
	i32 2921128767, ; 164: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 37
	i32 2978675010, ; 165: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 54
	i32 3024354802, ; 166: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 59
	i32 3044182254, ; 167: FormsViewGroup => 0xb57288ee => 8
	i32 3057625584, ; 168: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 71
	i32 3075834255, ; 169: System.Threading.Tasks => 0xb755818f => 109
	i32 3092211740, ; 170: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 33
	i32 3111772706, ; 171: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 172: System.Data.dll => 0xbefef58f => 101
	i32 3211777861, ; 173: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 53
	i32 3220365878, ; 174: System.Threading => 0xbff2e236 => 114
	i32 3247949154, ; 175: Mono.Security => 0xc197c562 => 108
	i32 3258312781, ; 176: Xamarin.AndroidX.CardView => 0xc235e84d => 44
	i32 3267021929, ; 177: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 42
	i32 3286872994, ; 178: SQLite-net.dll => 0xc3e9b3a2 => 13
	i32 3299363146, ; 179: System.Text.Encoding => 0xc4a8494a => 115
	i32 3317135071, ; 180: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 52
	i32 3317144872, ; 181: System.Data => 0xc5b79d28 => 101
	i32 3340431453, ; 182: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 41
	i32 3346324047, ; 183: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 72
	i32 3353484488, ; 184: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 58
	i32 3360279109, ; 185: SQLitePCLRaw.core => 0xc849ca45 => 15
	i32 3362522851, ; 186: Xamarin.AndroidX.Core => 0xc86c06e3 => 50
	i32 3366347497, ; 187: Java.Interop => 0xc8a662e9 => 9
	i32 3374999561, ; 188: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 76
	i32 3395150330, ; 189: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 24
	i32 3404865022, ; 190: System.ServiceModel.Internals => 0xcaf21dfe => 99
	i32 3429136800, ; 191: System.Xml => 0xcc6479a0 => 26
	i32 3430777524, ; 192: netstandard => 0xcc7d82b4 => 100
	i32 3439690031, ; 193: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 28
	i32 3441283291, ; 194: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 55
	i32 3442543374, ; 195: AndHUD => 0xcd310b0e => 6
	i32 3476120550, ; 196: Mono.Android => 0xcf3163e6 => 10
	i32 3486566296, ; 197: System.Transactions => 0xcfd0c798 => 102
	i32 3493954962, ; 198: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 46
	i32 3501239056, ; 199: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 42
	i32 3509114376, ; 200: System.Xml.Linq => 0xd128d608 => 27
	i32 3536029504, ; 201: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 89
	i32 3567349600, ; 202: System.ComponentModel.Composition.dll => 0xd4a16f60 => 106
	i32 3618140916, ; 203: Xamarin.AndroidX.Preference => 0xd7a872f4 => 74
	i32 3627220390, ; 204: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 75
	i32 3632359727, ; 205: Xamarin.Forms.Platform => 0xd881692f => 90
	i32 3633644679, ; 206: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 37
	i32 3641597786, ; 207: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 62
	i32 3672681054, ; 208: Mono.Android.dll => 0xdae8aa5e => 10
	i32 3676310014, ; 209: System.Web.Services.dll => 0xdb2009fe => 107
	i32 3682565725, ; 210: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 43
	i32 3684561358, ; 211: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 46
	i32 3689375977, ; 212: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3718780102, ; 213: Xamarin.AndroidX.Annotation => 0xdda814c6 => 36
	i32 3724971120, ; 214: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 71
	i32 3754567612, ; 215: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 17
	i32 3758932259, ; 216: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 60
	i32 3786282454, ; 217: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 45
	i32 3808352907, ; 218: AlcomsurApp.Android => 0xe2feda8b => 0
	i32 3822602673, ; 219: Xamarin.AndroidX.Media => 0xe3d849b1 => 69
	i32 3829621856, ; 220: System.Numerics.dll => 0xe4436460 => 22
	i32 3847036339, ; 221: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 95
	i32 3876362041, ; 222: SQLite-net => 0xe70c9739 => 13
	i32 3885922214, ; 223: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 81
	i32 3896760992, ; 224: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 50
	i32 3920810846, ; 225: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 105
	i32 3921031405, ; 226: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 84
	i32 3931092270, ; 227: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 73
	i32 3945713374, ; 228: System.Data.DataSetExtensions.dll => 0xeb2ecede => 103
	i32 3955647286, ; 229: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 39
	i32 4025784931, ; 230: System.Memory => 0xeff49a63 => 21
	i32 4073602200, ; 231: System.Threading.dll => 0xf2ce3c98 => 114
	i32 4105002889, ; 232: Mono.Security.dll => 0xf4ad5f89 => 108
	i32 4151237749, ; 233: System.Core => 0xf76edc75 => 19
	i32 4182413190, ; 234: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 66
	i32 4186595366, ; 235: ZXing.Net.Mobile.Core => 0xf98a6026 => 94
	i32 4260525087, ; 236: System.Buffers => 0xfdf2741f => 18
	i32 4292120959 ; 237: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 66
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [238 x i32] [
	i32 64, i32 93, i32 12, i32 88, i32 4, i32 78, i32 78, i32 45, ; 0..7
	i32 29, i32 7, i32 79, i32 43, i32 34, i32 112, i32 59, i32 118, ; 8..15
	i32 107, i32 48, i32 63, i32 57, i32 35, i32 22, i32 96, i32 61, ; 16..23
	i32 16, i32 21, i32 30, i32 47, i32 87, i32 110, i32 56, i32 11, ; 24..31
	i32 20, i32 57, i32 68, i32 113, i32 29, i32 102, i32 111, i32 105, ; 32..39
	i32 52, i32 84, i32 40, i32 27, i32 4, i32 28, i32 14, i32 104, ; 40..47
	i32 1, i32 75, i32 118, i32 34, i32 5, i32 93, i32 96, i32 12, ; 48..55
	i32 33, i32 61, i32 8, i32 110, i32 77, i32 39, i32 90, i32 65, ; 56..63
	i32 20, i32 98, i32 82, i32 72, i32 40, i32 83, i32 15, i32 54, ; 64..71
	i32 116, i32 99, i32 77, i32 69, i32 49, i32 24, i32 32, i32 111, ; 72..79
	i32 91, i32 104, i32 38, i32 5, i32 117, i32 97, i32 31, i32 53, ; 80..87
	i32 3, i32 67, i32 86, i32 51, i32 2, i32 117, i32 25, i32 80, ; 88..95
	i32 92, i32 48, i32 112, i32 16, i32 44, i32 79, i32 19, i32 56, ; 96..103
	i32 67, i32 92, i32 73, i32 87, i32 91, i32 41, i32 7, i32 70, ; 104..111
	i32 18, i32 65, i32 62, i32 25, i32 23, i32 58, i32 17, i32 89, ; 112..119
	i32 31, i32 113, i32 2, i32 82, i32 68, i32 70, i32 60, i32 76, ; 120..127
	i32 36, i32 97, i32 30, i32 98, i32 32, i32 74, i32 94, i32 115, ; 128..135
	i32 14, i32 47, i32 100, i32 9, i32 95, i32 103, i32 64, i32 6, ; 136..143
	i32 83, i32 51, i32 55, i32 63, i32 116, i32 80, i32 109, i32 0, ; 144..151
	i32 35, i32 38, i32 88, i32 85, i32 49, i32 26, i32 85, i32 81, ; 152..159
	i32 106, i32 11, i32 86, i32 23, i32 37, i32 54, i32 59, i32 8, ; 160..167
	i32 71, i32 109, i32 33, i32 3, i32 101, i32 53, i32 114, i32 108, ; 168..175
	i32 44, i32 42, i32 13, i32 115, i32 52, i32 101, i32 41, i32 72, ; 176..183
	i32 58, i32 15, i32 50, i32 9, i32 76, i32 24, i32 99, i32 26, ; 184..191
	i32 100, i32 28, i32 55, i32 6, i32 10, i32 102, i32 46, i32 42, ; 192..199
	i32 27, i32 89, i32 106, i32 74, i32 75, i32 90, i32 37, i32 62, ; 200..207
	i32 10, i32 107, i32 43, i32 46, i32 1, i32 36, i32 71, i32 17, ; 208..215
	i32 60, i32 45, i32 0, i32 69, i32 22, i32 95, i32 13, i32 81, ; 216..223
	i32 50, i32 105, i32 84, i32 73, i32 103, i32 39, i32 21, i32 114, ; 224..231
	i32 108, i32 19, i32 66, i32 94, i32 18, i32 66 ; 232..237
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
