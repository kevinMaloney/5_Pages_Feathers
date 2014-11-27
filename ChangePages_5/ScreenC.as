package {
	import feathers.controls.PanelScreen;
	import feathers.controls.ScrollContainer;
	import feathers.controls.ScrollText;
	import feathers.layout.VerticalLayout;
	import feathers.events.FeathersEventType;
	import feathers.controls.Button;
	import Utils;
	import starling.events.Event;

	public class ScreenC extends PanelScreen {

		public function ScreenC() {
			trace("An object of ScreenC has been created");
			super();
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);
		}
		private function initializeHandler(): void {
			trace("ScreenC object initialized");
			this.removeEventListener(FeathersEventType.INITIALIZE, initializeHandler);
			this.headerProperties.title = "ScreenC";

			var theLayout: VerticalLayout = new VerticalLayout();
			theLayout.gap = 10;
			theLayout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			this.layout = theLayout;
			this.verticalScrollPolicy = ScrollContainer.SCROLL_POLICY_ON;
			this.snapScrollPositionsToPixels = true;

			var st1: ScrollText = new ScrollText();
			st1.text = Utils.LOREM_IPSUM;
			st1.height = 200;
			this.addChild(st1);

			var st2: ScrollText = new ScrollText();
			st2.text = Utils.LOREM_IPSUM;
			st2.height = 100;
			this.addChild(st2);

			var screenAButton: Button;
			screenAButton = new Button();
			screenAButton.label = "Screen A";
			this.addChild(screenAButton);
			screenAButton.addEventListener(Event.TRIGGERED, handleScreenAButtonClick);
			
			var screenCButton: Button;
			screenCButton = new Button();
			screenCButton.label = "Screen C";
			this.addChild(screenCButton);
			screenCButton.addEventListener(Event.TRIGGERED, handleScreenCButtonClick);
			
			var screenDButton: Button;
			screenDButton = new Button();
			screenDButton.label = "Screen D";
			this.addChild(screenDButton);
			screenDButton.addEventListener(Event.TRIGGERED, handleScreenDButtonClick);
		}
		
		
		//BELOW HJERE IS YOURE PROBLEM
		private function handleScreenAButtonClick(e: Event): void {
			this.dispatchEventWith("showScreenA");
		
		}
		
				private function handleScreenCButtonClick(e: Event): void {
			this.dispatchEventWith("showScreenC");
	
		}
				private function handleScreenDButtonClick(e: Event): void {
			this.dispatchEventWith("showScreenD");
	       trace("D button clicked");
		}
		
	}
	
}
