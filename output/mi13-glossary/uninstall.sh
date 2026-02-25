#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mi13_glossary'

# Delete Transients
wp transient delete 'mi13_glossary'

