#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcjt_version'
wp option delete 'wpcjt_template'
wp option delete 'wpcjt_delete_me'
wp option delete 'wpcjt_nofollow'
wp option delete 'wpcjt_size'
wp option delete 'wpcjt_multi'

