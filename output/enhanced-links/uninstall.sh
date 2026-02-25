#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enh_links_version'
wp option delete 'enh_links_show_symbol'
wp option delete 'enh_links_hide_symbol'
wp option delete 'enh_links_is_symbol_before'
wp option delete 'enh_links_show_link_description'
wp option delete 'enh_links_effect'

