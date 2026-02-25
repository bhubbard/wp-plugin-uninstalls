-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fct_custom_version', 'feng_custom_version', 'fct_xianshi_tianshu', 'fct_kaitong_shijian', 'fct_kaitong_bangding', 'fct_kaitong_neirong', 'fct_shurukuang', 'fct_denglong', 'fct_denglong_zi_1', 'fct_denglong_zi_2', 'fct_denglong_kaishi', 'fct_denglong_jieshu', 'fct_huise', 'fct_huise_kaishi', 'fct_huise_jieshu', 'fct_dengxiang', 'fct_dengxiang_bangding', 'fct_lianjie', 'fct_lianjie_weiba', 'fct_festivals', 'fct_festivals_option', 'fct_xuehua', 'fct_xuehua_option', 'fct_links', 'fct_links_option', 'feng_custom_switch', 'feng_custom_option', 'feng_custom_festivals', 'feng_customfct_snowflake', 'feng_custom_links');

