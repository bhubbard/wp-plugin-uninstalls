-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mail_smtp', 'storelinkformc_force_link', 'storelinkformc_cf_zone_id', 'storelinkformc_cf_api_token', 'storelinkformc_checkout_fields', 'storelinkformc_username_policy', 'slmc_tpl_link_subject', 'slmc_tpl_link_html', 'storelinkformc_sync_products', 'storelinkformc_api_token', 'storelinkformc_default_linked_role', 'storelinkformc_product_roles_map', 'storelinkformc_needs_lscache_exclusion', 'storelinkformc_needs_rocket_exclusion');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slmc_dismiss_smtp_notice', 'minecraft_player', '_minecraft_username', '_minecraft_gift', '_minecraft_uuid', '_slmc_target_type', 'storelinkformc_dismiss_checkout_blocks_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('slmc_dismiss_smtp_notice', 'minecraft_player', '_minecraft_username', '_minecraft_gift', '_minecraft_uuid', '_slmc_target_type', 'storelinkformc_dismiss_checkout_blocks_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('slmc_dismiss_smtp_notice', 'minecraft_player', '_minecraft_username', '_minecraft_gift', '_minecraft_uuid', '_slmc_target_type', 'storelinkformc_dismiss_checkout_blocks_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slmc_dismiss_smtp_notice', 'minecraft_player', '_minecraft_username', '_minecraft_gift', '_minecraft_uuid', '_slmc_target_type', 'storelinkformc_dismiss_checkout_blocks_notice');

