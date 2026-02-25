#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blogroll_page_new_window'
wp option delete 'blogroll_page_link'
wp option delete 'blogroll_page_display_cat'
wp option delete 'blogroll_page_link_order1'
wp option delete 'blogroll_page_link_order2'

