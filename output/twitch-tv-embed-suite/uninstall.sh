#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pte_streamwidth'
wp option delete 'pte_streamheight'
wp option delete 'pte_chatwidth'
wp option delete 'pte_chatheight'
wp option delete 'pte_autoplay'
wp option delete 'pte_startvolume'
wp option delete 'pte_allowfullscreen'
wp option delete 'pte_allowscriptaccess'
wp option delete 'pte_bgcolor'
wp option delete 'pte_wmode'
wp option delete 'pte_showchat'

