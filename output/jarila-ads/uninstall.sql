-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jarila_country', 'jarila_ml_market', 'jarila_ml_site_id', 'jarila_ml_border_color', 'jarila_ml_image_border_color', 'jarila_ml_text_size', 'jarila_ml_text_color', 'jarila_ml_text_bold', 'jarila_ml_price_size', 'jarila_ml_price_color', 'jarila_ml_price_bold', 'jarila_ga_ad1_name', 'jarila_ga_ad2_name', 'jarila_ga_ad3_name', 'jarila_ga_ad4_name');
DELETE FROM wp_options WHERE option_name LIKE 'jarila_ga_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jarila_ml_i_want_ads', 'jarila_ml_howmany_ads', 'jarila_ml_howmany_lines', 'jarila_ml_keyword', 'jarila_ml_order_by', 'jarila_ml_position', 'jarila_ga_i_want_ads', 'jarila_ga_which_ad', 'jarila_ga_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('jarila_ml_i_want_ads', 'jarila_ml_howmany_ads', 'jarila_ml_howmany_lines', 'jarila_ml_keyword', 'jarila_ml_order_by', 'jarila_ml_position', 'jarila_ga_i_want_ads', 'jarila_ga_which_ad', 'jarila_ga_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('jarila_ml_i_want_ads', 'jarila_ml_howmany_ads', 'jarila_ml_howmany_lines', 'jarila_ml_keyword', 'jarila_ml_order_by', 'jarila_ml_position', 'jarila_ga_i_want_ads', 'jarila_ga_which_ad', 'jarila_ga_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jarila_ml_i_want_ads', 'jarila_ml_howmany_ads', 'jarila_ml_howmany_lines', 'jarila_ml_keyword', 'jarila_ml_order_by', 'jarila_ml_position', 'jarila_ga_i_want_ads', 'jarila_ga_which_ad', 'jarila_ga_position');

