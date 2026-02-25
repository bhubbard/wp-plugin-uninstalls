-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_scanc_aggressive', 'scanc_speed', 'scanc_offset', 'scanc_easing', 'scanc_exclude_begin_1', 'scanc_exclude_begin_2', 'scanc_exclude_begin_3', 'scanc_exclude_begin_4', 'scanc_exclude_begin_5', 'scanc_exclude_match_1', 'scanc_exclude_match_2', 'scanc_exclude_match_3', 'scanc_exclude_match_4', 'scanc_exclude_match_5', 'essl_speed', 'essl_offset', 'essl_easing', 'essl_exclude_begin_1', 'essl_exclude_begin_2', 'essl_exclude_begin_3', 'essl_exclude_begin_4', 'essl_exclude_begin_5', 'essl_exclude_match_1', 'essl_exclude_match_2', 'essl_exclude_match_3', 'essl_exclude_match_4', 'essl_exclude_match_5', 'enable_essl_aggressive');

