-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcscm_enable', 'wcscm_shope_page', 'wcscm-inlinecss', 'wcscm_0_order_text', 'wcscm_after_single', 'wcscm_text', 'wcscm_text_color', 'wcscm_count_color', 'wcscm_bg_color', 'wcscm_social_buttons', 'wcscm_after_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_sales');

