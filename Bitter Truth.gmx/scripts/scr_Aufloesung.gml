//////////////////////////////////////
// gewünschte Aufloesung darstellen //
//////////////////////////////////////

var displayWidth = global.displayWidth;
var displayHeight = global.displayHeight;

// Aufloesung automatisch ermitteln (irrelevant aber gut zu wissen für z.B. Mobile) //
//      var displayWidth = display_get_width;
//      var displayHeight = display_get_height;


// Größe des Fensters entsprechend ändern //
window_set_size(displayWidth, displayHeight);

// Standard-Aufloesung festlegen //
var baseWidth = 1920;
var baseHeight = 1080;

// Aspect Ratio bestimmen //
var aspect = baseWidth/baseHeight;

// Bestimmung der Plazierung der schwarzen Balken in Abhängigkeit der Aufloesung/Aspect Ratio //

if (displayWidth >= displayHeight )
{
    var height = min(baseHeight , displayHeight);
    var width = height * aspect;
}

// Anwendungsobefläche an die veränderten Werte anpassen //
surface_resize(application_surface, width, height);



