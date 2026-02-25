-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsas_maxmind_license', 'bsas_mu_initialized_lite', 'bsas_retention_days', 'bsas_transient_version', 'bsas_enable_rate_limit', 'bsas_rate_limit', 'bsas_log_mode', 'bsas_store_plain_ip', 'bsas_hash_ips', 'bsas_enabled', 'bsas_block_rest_api', 'bsas_allow_crawlers', 'bsas_strict_asn', 'bsas_unknown_policy', 'bsas_blocked_countries', 'bsas_block_heading', 'bsas_install_time', 'bsas_promo_dismissed_at', 'bsas_review_never_show', 'bsas_review_dismissed_at');

