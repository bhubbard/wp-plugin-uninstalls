#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plctag_elementor_tag_list_active'
wp option delete 'plctag_elementor_active'
wp option delete 'plcarticle_listview_active'
wp option delete 'plcarticle_listview_slug'

