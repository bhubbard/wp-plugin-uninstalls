#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BilingualLinkerGeneral'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bilingual-linker-other-lang-url-1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bilingual-linker-other-lang-url-1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bilingual-linker-other-lang-url-1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bilingual-linker-other-lang-url-1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bilingual-linker-other-lang-url-2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bilingual-linker-other-lang-url-2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bilingual-linker-other-lang-url-2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bilingual-linker-other-lang-url-2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bilingual-linker-other-lang-url-3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bilingual-linker-other-lang-url-3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bilingual-linker-other-lang-url-3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bilingual-linker-other-lang-url-3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bilingual-linker-other-lang-url-4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bilingual-linker-other-lang-url-4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bilingual-linker-other-lang-url-4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bilingual-linker-other-lang-url-4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bilingual-linker-other-lang-url-5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bilingual-linker-other-lang-url-5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bilingual-linker-other-lang-url-5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bilingual-linker-other-lang-url-5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bilingual-linker-other-lang-url-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bilingual-linker-other-lang-url-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bilingual-linker-other-lang-url-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bilingual-linker-other-lang-url-%'"
