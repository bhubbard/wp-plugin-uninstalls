-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keyspider_zhizhu', 'keyspider_liuliang', 'keyspider_zhizhu_jieduan', 'keyspider_tongji', 'keyspider_clear', 'keyspider_wzt_log', 'keyspider_wzt_token3', 'keyspider_wzt_token2', 'keyspider_wzt_token1', 'keyspider_liuliang_diyu_jifen', 'keyspider_liuliang_diyu', 'keyspider_level', 'keyspider_silian', 'keyspider_zhizhu_cache');

