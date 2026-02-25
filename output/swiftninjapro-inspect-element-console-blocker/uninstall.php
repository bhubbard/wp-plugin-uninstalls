<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SwiftNinjaProInspectElementBlocker_DisableOn404');
delete_site_option('SwiftNinjaProInspectElementBlocker_DisableOn404');
delete_option('SwiftNinjaProInspectElementBlocker_DisableOnMobile');
delete_site_option('SwiftNinjaProInspectElementBlocker_DisableOnMobile');
delete_option('SwiftNinjaProInspectElementBlocker_AllowSearchEngine');
delete_site_option('SwiftNinjaProInspectElementBlocker_AllowSearchEngine');
delete_option('SwiftNinjaProInspectElementBlocker_DisableOnAdmin');
delete_site_option('SwiftNinjaProInspectElementBlocker_DisableOnAdmin');
delete_option('SwiftNinjaProInspectElementBlocker_DisableOnLogin');
delete_site_option('SwiftNinjaProInspectElementBlocker_DisableOnLogin');
delete_option('SwiftNinjaProInspectElementBlocker_ForceJS');
delete_site_option('SwiftNinjaProInspectElementBlocker_ForceJS');
delete_option('SwiftNinjaProInspectElementBlocker_BlockRightClick');
delete_site_option('SwiftNinjaProInspectElementBlocker_BlockRightClick');
delete_option('SwiftNinjaProInspectElementBlocker_Secure404');
delete_site_option('SwiftNinjaProInspectElementBlocker_Secure404');

