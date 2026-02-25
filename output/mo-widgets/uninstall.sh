#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dw_check_new_pages'
wp option delete 'dw_saved_page_list'
wp option delete 'dw_saved_cat_list'

