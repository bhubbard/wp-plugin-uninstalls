#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frontegg_saml_settings'
wp option delete 'frontegg_saml_version'

# Delete Transients
wp transient delete 'frontegg_saml_updated_notice'

