-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfv-enable-comment-validation', 'cfv-prevenr-die', 'cfv-comment-post-label');

