-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SwiftNinjaProInspectElementBlocker_DisableOn404', 'SwiftNinjaProInspectElementBlocker_DisableOnMobile', 'SwiftNinjaProInspectElementBlocker_AllowSearchEngine', 'SwiftNinjaProInspectElementBlocker_DisableOnAdmin', 'SwiftNinjaProInspectElementBlocker_DisableOnLogin', 'SwiftNinjaProInspectElementBlocker_ForceJS', 'SwiftNinjaProInspectElementBlocker_BlockRightClick', 'SwiftNinjaProInspectElementBlocker_Secure404');

