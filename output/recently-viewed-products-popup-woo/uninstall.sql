-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wrvpp_enable_popup', 'wrvpp_display_on', 'wrvpp_limit_products', 'wrvpp_modal_title', 'wrvpp_max_products', 'wrvpp_popup_position', 'wrvpp_popup_link_text');

