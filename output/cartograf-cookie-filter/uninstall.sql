-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cg_cf_accept_timeout', 'cg_cf_text', 'cg_cf_accept_scrollout', 'cg_cf_head_accepted_code', 'cg_cf_head_denied_code', 'cg_cf_foot_accepted_code', 'cg_cf_foot_denied_code', 'cg_cf_exception_pages');

