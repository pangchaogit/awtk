
set(linebreak_src  graphemebreak.c
                    linebreak.c
                    linebreakdef.c
                    unibreakbase.c
                    unibreakdef.c
                    wordbreak.c
                    emojidef.c
                    linebreakdata.c)

add_library(linebreak ${linebreak_src})
set(AWTK_LIBS ${AWTK_LIBS} linebreak CACHE INTERNAL "")