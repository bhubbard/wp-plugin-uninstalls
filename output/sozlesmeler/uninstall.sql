-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocontracts_1a', 'woocontracts_2a', 'woocontracts_3a', 'woocontracts_baslik', 'woocontracts_1_baslik', 'woocontracts_2_baslik', 'woocontracts_3_baslik', 'woocontracts_1_yaz', 'woocontracts_2_yaz', 'woocontracts_3_yaz', 'woocontracts_TCR', ' woocontracts_baslik', ' woocontracts_1_baslik', ' woocontracts_2_baslik', ' woocontracts_3_baslik', 'wctr_logoX', 'wctr_logoY', 'wctr_logoW', 'wctr_logoH', 'wctr_logoL');

