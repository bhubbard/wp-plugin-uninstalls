-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple-google-fonts-japanese-font', 'simple-google-fonts-japanese-notosansjp-weight', 'simple-google-fonts-japanese-mplus1p-weight', 'simple-google-fonts-japanese-notoserifjp-weight', 'simple-google-fonts-japanese-mplusrounded1c-weight', 'simple-google-fonts-japanese-editor');

