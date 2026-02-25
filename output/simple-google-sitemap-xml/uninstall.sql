-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gsxml_store', 'gsxml_hp', 'gsxml_hf', 'gsxml_gp', 'gsxml_gf', 'gsxml_pri_freq', 'gsxml_cat', 'gsxml_tag', 'gsxml_last_ch');

