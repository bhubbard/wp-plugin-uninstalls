#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_album'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_artist'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_chords'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_comments'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_composer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_subtitle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_year'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_fontsize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_transpose'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hide_print'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_show_numeric_transpose'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_fixed_interaction'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_hb_notation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_show_chord_sheet'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_show_chord_sheet_on_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_select_title_level'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_select_subtitle_level'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_meta_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_line_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_lyrics_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_comment_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chorus_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_verse_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_backgroundColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_barreChordRadius'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_barreChordStrokeColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_barreChordStrokeWidth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_canvasWidth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_emptyStringIndicatorSize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_chord_fixedDiagramPosition'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_fontFamily'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_fretColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_fretLabelColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_fretLabelFontSize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_fretSize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_nutSize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_nutColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_nutStrokeColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_nutStrokeWidth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_nutTextColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_nutTextSize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_sidePadding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_stringColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_select_chord_strings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_strokeWidth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_select_chord_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_titleBottomMargin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_titleColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_titleFontSize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_topFretWidth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_tuning'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_chord_tuningsColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_chord_tuningsFontSize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_uninstall_delete_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_uninstall_delete_chordposts'"
wp option delete 'chordpress_text_chord_color'
wp option delete 'chordpress_text_chord_nutColor'
wp option delete 'chordpress_text_chord_backgroundColor'
wp option delete 'chordpress_number_chord_barreChordRadius'
wp option delete 'chordpress_text_chord_barreChordStrokeColor'
wp option delete 'chordpress_number_chord_barreChordStrokeWidth'
wp option delete 'chordpress_number_chord_canvasWidth'
wp option delete 'chordpress_number_chord_emptyStringIndicatorSize'
wp option delete 'chordpress_checkbox_chord_fixedDiagramPosition'
wp option delete 'chordpress_text_chord_fontFamily'
wp option delete 'chordpress_text_chord_fretColor'
wp option delete 'chordpress_text_chord_fretLabelColor'
wp option delete 'chordpress_select_chord_fretLabelPosition'
wp option delete 'chordpress_number_chord_fretLabelFontSize'
wp option delete 'chordpress_number_chord_frets'
wp option delete 'chordpress_number_chord_fretSize'
wp option delete 'chordpress_number_chord_nutSize'
wp option delete 'chordpress_text_chord_nutStrokeColor'
wp option delete 'chordpress_number_chord_nutStrokeWidth'
wp option delete 'chordpress_text_chord_nutTextColor'
wp option delete 'chordpress_number_chord_nutTextSize'
wp option delete 'chordpress_number_chord_position'
wp option delete 'chordpress_number_chord_sidePadding'
wp option delete 'chordpress_text_chord_stringColor'
wp option delete 'chordpress_select_chord_strings'
wp option delete 'chordpress_number_chord_strokeWidth'
wp option delete 'chordpress_select_chord_style'
wp option delete 'chordpress_number_chord_titleBottomMargin'
wp option delete 'chordpress_text_chord_titleColor'
wp option delete 'chordpress_number_chord_titleFontSize'
wp option delete 'chordpress_number_chord_topFretWidth'
wp option delete 'chordpress_text_chord_tuning'
wp option delete 'chordpress_text_chord_tuningsColor'
wp option delete 'chordpress_number_chord_tuningsFontSize'
wp option delete 'chordpress_checkbox_hide_album'
wp option delete 'chordpress_checkbox_hide_artist'
wp option delete 'chordpress_checkbox_hide_chords'
wp option delete 'chordpress_checkbox_hide_comments'
wp option delete 'chordpress_checkbox_hide_composer'
wp option delete 'chordpress_checkbox_hide_key'
wp option delete 'chordpress_checkbox_hide_print'
wp option delete 'chordpress_checkbox_hide_subtitle'
wp option delete 'chordpress_checkbox_hide_title'
wp option delete 'chordpress_checkbox_hide_fontsize'
wp option delete 'chordpress_checkbox_hide_transpose'
wp option delete 'chordpress_checkbox_hide_year'
wp option delete 'chordpress_checkbox_hb_notation'
wp option delete 'chordpress_checkbox_show_chord_sheet'
wp option delete 'chordpress_checkbox_show_chord_sheet_on_top'
wp option delete 'chordpress_checkbox_show_numeric_transpose'
wp option delete 'chordpress_checkbox_fixed_interaction'
wp option delete 'chordpress_select_title_level'
wp option delete 'chordpress_select_subtitle_level'
wp option delete 'chordpress_text_meta_style'
wp option delete 'chordpress_text_chord_style'
wp option delete 'chordpress_text_lyrics_style'
wp option delete 'chordpress_text_comment_style'
wp option delete 'chordpress_text_chorus_style'
wp option delete 'chordpress_text_verse_style'
wp option delete 'chordpress_text_line_style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guitar_chord_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guitar_chord_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guitar_chord_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guitar_chord_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guitar_chord_strings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guitar_chord_strings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guitar_chord_strings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guitar_chord_strings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guitar_chord_barres'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guitar_chord_barres'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guitar_chord_barres'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guitar_chord_barres'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guitar_chord_fingers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guitar_chord_fingers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guitar_chord_fingers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guitar_chord_fingers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guitar_chord_frets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guitar_chord_frets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guitar_chord_frets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guitar_chord_frets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guitar_chord_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guitar_chord_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guitar_chord_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guitar_chord_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guitar_chord_tuning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guitar_chord_tuning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guitar_chord_tuning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guitar_chord_tuning'"
