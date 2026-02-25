#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SwiftNinjaProInspectElementBlocker_DisableOn404'
wp option delete 'SwiftNinjaProInspectElementBlocker_DisableOnMobile'
wp option delete 'SwiftNinjaProInspectElementBlocker_AllowSearchEngine'
wp option delete 'SwiftNinjaProInspectElementBlocker_DisableOnAdmin'
wp option delete 'SwiftNinjaProInspectElementBlocker_DisableOnLogin'
wp option delete 'SwiftNinjaProInspectElementBlocker_ForceJS'
wp option delete 'SwiftNinjaProInspectElementBlocker_BlockRightClick'
wp option delete 'SwiftNinjaProInspectElementBlocker_Secure404'

