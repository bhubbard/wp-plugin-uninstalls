-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aip3_inser_af_byte', 'aip3_noads_af_pub', 'aip3_ssp', 'aip3_noads_page', 'aip3_enable_inad', 'aip3_enable_topad', 'aip3_enable_btad', 'aip3_enable_adit', 'aip3_ads_m', 'aip3_ads_d', 'aip3_ads_a', 'aip3_ads_mt', 'aip3_ads_dt', 'aip3_ads_at', 'aip3_ads_mb', 'aip3_ads_db', 'aip3_ads_ab');

