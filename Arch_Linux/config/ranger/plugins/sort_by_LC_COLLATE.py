# Compatible with ranger 1.6.*
#
# This plugin adds the sorting algorithm called 'random'.  To enable it, type
# ":set sort=random" or create a key binding with ":map oz set sort=random"

from ranger.container.directory import Directory
# import icu  # IBM's ICU library
import locale
import os

sys_lc_collate = os.environ['LC_COLLATE']
# 有个 bug，汉语在英语前面
# collator = icu.Collator.createInstance(icu.Locale(sys_lc_collate))
# Directory.sort_dict['lc_collate'] = \
#         lambda path: collator.getSortKey(path.basename)
Directory.sort_dict['lc_collate'] = \
        lambda path: locale.strxfrm(path.basename)
