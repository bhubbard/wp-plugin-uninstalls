#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_nmi_pci_version'
wp option delete 'woocommerce_nmi_settings'
wp option delete 'woocommerce_gateway_nmi_retention'
wp option delete 'active_sitewide_plugins'

