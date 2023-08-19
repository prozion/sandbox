#include <SFML/Graphics.h>

int main()
{
	sfVideoMode mode = {480, 320, 32};
	sfWindow* window;
	sfEvent event;

	/*window = sfWindow_create(mode, "Hello, World!", sfResize | sfClose, NULL);*/
	window = sfWindow_create(mode, "Hello, World!", sfResize | sfClose, NULL);

	while (sfWindow_isOpen(window))
	{
		while (sfWindow_pollEvent(window, &event))
		{
			if (event.type == sfEvtClosed)
			sfWindow_close(window);
		}
		/*sfWindow_clear(window, sfWhite);*/
		sfWindow_display(window);
	}
	sfWindow_destroy(window);
	return 0;
}

