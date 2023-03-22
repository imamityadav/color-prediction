/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	   //config.width = '900px';
    config.height = '250px';
	config.extraPlugins += (config.extraPlugins.length == 0 ? '' : ',') + 'ckeditor_wiris';
};
CKEDITOR.config.extraPlugins= 'simage' 
 CKEDITOR.config.imageUploadURL= 'editorimageUpload.php';
 //CKEDITOR.config.dataParser= func(data);
 
 