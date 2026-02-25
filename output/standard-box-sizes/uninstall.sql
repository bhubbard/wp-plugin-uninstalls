-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('box_sizing_packaging_solution_preference', 'suspend_automatic_detection_of_box_sizing', 'en_trial_3dbin_flag', 'subscription_packages_response', 'box_sizing_optimization_mode', 'en_3dbin_message', 'en_3dbin_message_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('box_sizing', 'or_box_sizing', '_en_rot_ver', '_en_own_pack', '_en_multiple_packages', 'en_multi_packaging');
DELETE FROM wp_usermeta WHERE meta_key IN ('box_sizing', 'or_box_sizing', '_en_rot_ver', '_en_own_pack', '_en_multiple_packages', 'en_multi_packaging');
DELETE FROM wp_termmeta WHERE meta_key IN ('box_sizing', 'or_box_sizing', '_en_rot_ver', '_en_own_pack', '_en_multiple_packages', 'en_multi_packaging');
DELETE FROM wp_commentmeta WHERE meta_key IN ('box_sizing', 'or_box_sizing', '_en_rot_ver', '_en_own_pack', '_en_multiple_packages', 'en_multi_packaging');

