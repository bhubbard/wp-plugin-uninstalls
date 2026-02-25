-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdm_privacy_notice_dismissed', 'wdm_pefree_show_popup_on_next_load', 'wdm_pefree_activation_time', 'wdm_pefree_activation_banner_dismissed', 'wdm_form_data', 'wdm_pefree_show_activation_banner');

