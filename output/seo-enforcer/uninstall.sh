#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seoe_settings_version'
wp option delete 'seoe_post_notices'
wp option delete 'seoe_title'
wp option delete 'seoe_title_length'
wp option delete 'seoe_title_trunc_type'
wp option delete 'seoe_title_trunc_ex'
wp option delete 'seoe_desc'
wp option delete 'seoe_desc_trunc_type'
wp option delete 'seoe_desc_trunc_ex'
wp option delete 'seoe_h1'
wp option delete 'seoe_h1_ex'
wp option delete 'seoe_settings'

