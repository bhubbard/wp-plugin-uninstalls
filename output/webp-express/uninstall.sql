-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webp-express-alter-html-replacement', 'webp-express-alter-html-hooks', 'webp-express-activation-error', 'cache-enabler');

