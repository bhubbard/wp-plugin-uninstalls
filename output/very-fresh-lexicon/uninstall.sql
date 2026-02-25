-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Very_Fresh_Lexicon_css', 'Very_Fresh_Lexicon_url', 'fl-podcaster-custom-style', 'fl-podcaster-custom-url');

