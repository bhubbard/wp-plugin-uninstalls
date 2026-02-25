-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SkMenuMode', 'SkTRDefWidth', 'SkTRDefHeight', 'SkTRBgColor', 'SkTRTxtColor', 'SkTRBdColor', 'SkTRFilColor', 'SkTRShVolume', 'SkTRChType', 'SkTRDefPeriod', 'SkTRDefMarket', 'SkTRStatic');

