#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_excerpt_generator_maj'
wp option delete 'wp_excerpt_generator_method'
wp option delete 'wp_excerpt_generator_owntag'
wp option delete 'wp_excerpt_generator_nbletters'
wp option delete 'wp_excerpt_generator_nbwords'
wp option delete 'wp_excerpt_generator_nbparagraphs'
wp option delete 'wp_excerpt_generator_cleaner'
wp option delete 'wp_excerpt_generator_htmlOK'
wp option delete 'wp_excerpt_generator_htmlBR'
wp option delete 'wp_excerpt_generator_breakOK'
wp option delete 'wp_excerpt_generator_break'
wp option delete 'wp_excerpt_generator_status'
wp option delete 'wp_excerpt_generator_type'
wp option delete 'wp_excerpt_generator_delete_shortcode'
wp option delete 'wp_excerpt_generator_save'
wp option delete 'wp_excerpt_generator_deleteExcerpt'
wp option delete 'wp_excerpt_generator_version'

