#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_mail_smtp'
wp option delete 'storelinkformc_force_link'
wp option delete 'storelinkformc_cf_zone_id'
wp option delete 'storelinkformc_cf_api_token'
wp option delete 'storelinkformc_checkout_fields'
wp option delete 'storelinkformc_username_policy'
wp option delete 'slmc_tpl_link_subject'
wp option delete 'slmc_tpl_link_html'
wp option delete 'storelinkformc_sync_products'
wp option delete 'storelinkformc_api_token'
wp option delete 'storelinkformc_default_linked_role'
wp option delete 'storelinkformc_product_roles_map'
wp option delete 'storelinkformc_needs_lscache_exclusion'
wp option delete 'storelinkformc_needs_rocket_exclusion'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slmc_dismiss_smtp_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slmc_dismiss_smtp_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slmc_dismiss_smtp_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slmc_dismiss_smtp_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minecraft_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minecraft_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minecraft_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minecraft_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_minecraft_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_minecraft_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_minecraft_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_minecraft_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_minecraft_gift'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_minecraft_gift'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_minecraft_gift'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_minecraft_gift'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_minecraft_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_minecraft_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_minecraft_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_minecraft_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slmc_target_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slmc_target_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slmc_target_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slmc_target_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storelinkformc_dismiss_checkout_blocks_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storelinkformc_dismiss_checkout_blocks_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storelinkformc_dismiss_checkout_blocks_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storelinkformc_dismiss_checkout_blocks_notice'"
