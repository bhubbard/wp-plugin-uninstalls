-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('websitebox_tables_back_plan', 'websitebox_tables_back_plan_time', 'websitebox_base', 'websitebox_sanheyi', 'websitebox_kefu', 'websitebox_shoujikefu', 'websitebox_liuyan', 'websitebox_sitebg', 'websitebox_alert', 'websitebox_scroll', 'websitebox_guanggao', 'websitebox_picload', 'websitebox_shubiaotexiao', 'websitebox_youhua', 'websitebox_tongji', 'websitebox_is_mianze', 'websitebox_shuiyin', 'websitebox_log', 'websitebox_level');

