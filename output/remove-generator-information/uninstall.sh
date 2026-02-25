#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'no_generator_metatag_xhtml'
wp option delete 'no_generator_metatag_html'
wp option delete 'no_generator_metatag_atom'
wp option delete 'no_generator_metatag_rss2'
wp option delete 'no_generator_metatag_rdf'
wp option delete 'no_generator_metatag_comment'
wp option delete 'no_generator_metatag_export'

