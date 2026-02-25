#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bip_pages_main_page_id'
wp option delete 'bip_pages_instruction_id'
wp option delete 'Activated_Plugin'
wp option delete 'widget_bip-logo'
wp option delete 'sidebars_widgets'
wp option delete 'bip_pages_org_name'
wp option delete 'bip_pages_address'
wp option delete 'bip_pages_editor'
wp option delete 'bip_pages_email'
wp option delete 'bip_pages_phone'
wp option delete 'bip-pages-edit-access-role'
wp option delete 'bip-pages-publish-access-role'
wp option delete 'bip-pages-delete-access-role'

# Delete Transients
wp transient delete 'bip-pages-activation-msg'
wp transient delete 'bip-pages-deactivation-msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bip_prepared_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bip_prepared_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bip_prepared_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bip_prepared_by'"
