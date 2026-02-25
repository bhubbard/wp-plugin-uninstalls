#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wu_block_comments_options'
wp option delete 'wu_block_comments_wordlist'
wp option delete 'wubc_check_wordlist'

