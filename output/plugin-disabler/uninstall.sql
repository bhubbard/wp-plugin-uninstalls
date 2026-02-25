-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pi_post_types', 'pi_hp_deactivated_plugins', 'pi_op_deactivated_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pi_deactivated_plugins_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('pi_deactivated_plugins_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('pi_deactivated_plugins_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pi_deactivated_plugins_meta');

