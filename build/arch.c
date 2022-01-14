
#define _STR(x) #x
#define STR(x) _STR(x)

#if defined(__arm__) || defined(__TARGET_ARCH_ARM) || defined(_M_ARM) || \
    defined(_M_ARM64) || defined(__aarch64__) || defined(__ARM64__)

    #if defined(__ARM_ARCH) && __ARM_ARCH > 1
        #pragma message "cmake_ARCH armv" STR(__ARM_ARCH)
        #error
    #elif defined(__TARGET_ARCH_ARM) && __TARGET_ARCH_ARM > 1
        #pragma message "cmake_ARCH armv" STR(__TARGET_ARCH_ARM)
        #error
    #elif defined(_M_ARM) && _M_ARM > 1
        #error cmake_ARCH arm ## __M_ARM
    #elif defined(__ARM64_ARCH_8__) \
        || defined(__aarch64__) \
        || defined(__ARMv8__) \
        || defined(__ARMv8_A__) \
        || defined(_M_ARM64)
        #error cmake_ARCH armv8
    #elif defined(__ARM_ARCH_7__) \
        || defined(__ARM_ARCH_7A__) \
        || defined(__ARM_ARCH_7R__) \
        || defined(__ARM_ARCH_7M__) \
        || defined(__ARM_ARCH_7S__) \
        || defined(_ARM_ARCH_7) \
        || defined(__CORE_CORTEXA__)
        #error cmake_ARCH armv7
    #elif defined(__ARM_ARCH_6__) \
        || defined(__ARM_ARCH_6J__) \
        || defined(__ARM_ARCH_6T2__) \
        || defined(__ARM_ARCH_6Z__) \
        || defined(__ARM_ARCH_6K__) \
        || defined(__ARM_ARCH_6ZK__) \
        || defined(__ARM_ARCH_6M__)
        #error cmake_ARCH armv6
    #elif defined(__ARM_ARCH_5TEJ__) \
        || defined(__ARM_ARCH_5TE__)
        #error cmake_ARCH armv5
    #else
        #error cmake_ARCH arm
    #endif
#elif defined(__i386) || defined(__i386__) || defined(_M_IX86)
    #error cmake_ARCH i386
#elif defined(__x86_64) || defined(__x86_64__) || defined(__amd64) || defined(_M_X64)
    #error cmake_ARCH x86_64
#elif defined(__ia64) || defined(__ia64__) || defined(_M_IA64)
    #error cmake_ARCH ia64
#elif defined(__ppc__) || defined(__ppc) || defined(__powerpc__) \
      || defined(_ARCH_COM) || defined(_ARCH_PWR) || defined(_ARCH_PPC)  \
      || defined(_M_MPPC) || defined(_M_PPC)
    #if defined(__ppc64__) || defined(__powerpc64__) || defined(__64BIT__)
        #error cmake_ARCH ppc64
    #else
        #error cmake_ARCH ppc
    #endif
#endif

#error cmake_ARCH unknown
