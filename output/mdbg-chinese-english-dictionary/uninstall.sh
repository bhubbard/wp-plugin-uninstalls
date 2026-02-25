#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdbg_mirror'
wp option delete 'mdbg_function'
wp option delete 'mdbg_simptrad'
wp option delete 'mdbg_autolink_the_content'
wp option delete 'mdbg_autolink_the_excerpt'
wp option delete 'mdbg_autolink_comment_text'
wp option delete 'mdbg_tag_hanzi'
wp option delete 'mdbg_tag_pinyin'
wp option delete 'mdbg_pinyin_mode'

