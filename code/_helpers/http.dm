
#ifndef LIB_BURL
	#define LIB_BURL "libburl"
#endif

var/lib_burl = world.system_type == MS_WINDOWS ? "libburl.dll" : "./libburl.so"

proc/http_get(var/address, var/custom_headers)
	return call(lib_burl, "burl_get")(address, custom_headers)

proc/http_post(var/address, var/custom_headers, var/payload)
	return call(lib_burl, "burl_post")(address, custom_headers, payload)