-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iii_sirdata_cmp_id', 'iii_ga_third_party', 'iii_gtag_tracking_id', 'iii_ga_tracking_id', 'iii_salient_cta_text_01', 'iii_salient_cta_text_02', 'iii_micromodal', 'iii_lead_time_modal_content', 'iii_automatic_modal_content', 'iii_feed_links', 'iii_gtag_third_party', 'iii_ga_cf7_events', 'iii_ga_hs_events', 'iii_modal_nav_menu_link', 'iii_gs_products_database', 'iii_salient_cta_icon_01', 'iii_salient_cta_url_01', 'iii_salient_cta_target_01', 'iii_salient_cta_micromodal_01', 'iii_salient_cta_icon_02', 'iii_salient_cta_url_02', 'iii_salient_cta_target_02', 'iii_salient_cta_micromodal_02', 'iii_salient_cta_exclude', 'iii_modal_title', 'iii_modal_content', 'iii_cmp_third_party', 'iii_sirdata_third_party', 'iii_ga_linker_domains', 'iii_siiimple_updated', 'iii_siiimple_activated');

