#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cardtype_options'
wp option delete 'remove_pubdate'
wp option delete 'copyprotect_options'
wp option delete 'protectuser_options'
wp option delete 'protectfunction_options'
wp option delete 'loadinganime_options'
wp option delete 'sangoplusfont_options'
wp option delete 'my_theme_options'
wp option delete 'tagcloud_options'
wp option delete 'pagecss_options'

