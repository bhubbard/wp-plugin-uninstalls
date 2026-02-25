#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsletter-converter_stripLinks'
wp option delete 'newsletter-converter_stripStyles'
wp option delete 'newsletter-converter_stripScripts'
wp option delete 'newsletter-converter_convertURL'

