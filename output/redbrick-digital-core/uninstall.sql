-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wlio_api_url', 'rbd_core_review_engine_url_updated', 'rbd_core_review_engine_url', 'RBD_CORE_VALID', 'rbd_core_hipaa_compliance', 'rbd_core_api_call');

