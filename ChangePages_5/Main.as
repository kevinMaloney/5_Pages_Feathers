package {
	import starling.display.Sprite;
	import starling.events.Event;
	import feathers.controls.Drawers;
	import feathers.themes.MetalWorksMobileTheme;
	import feathers.controls.Screen;
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.controls.ScrollContainer;
	import feathers.events.FeathersEventType;

	public class Main extends ScreenNavigator {

		public function Main() {
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);
		}
		private function initializeHandler(e: Event): void {
			this.removeEventListener(FeathersEventType.INITIALIZE, initializeHandler);
			new MetalWorksMobileTheme();
			
			var screenA: ScreenA = new ScreenA();
			var screenNavItem1: ScreenNavigatorItem = new ScreenNavigatorItem(screenA, {
				"showScreenB": "screenB"
			});
			this.addScreen("screenA", screenNavItem1);
			
			var screenB: ScreenB = new ScreenB();
			var screenNavItem2: ScreenNavigatorItem = new ScreenNavigatorItem(screenB, {
				"showScreenA": "screenA","showScreenC": "screenC"
			});
			this.addScreen("screenB", screenNavItem2);
			
			this.showScreen("screenA");
			
			var screenC: ScreenC = new ScreenC();
			var screenNavItem3: ScreenNavigatorItem = new ScreenNavigatorItem(screenC, {
				"showScreenA": "screenA","showScreenD": "screenD"
			});
		    this.addScreen("screenC", screenNavItem3);
			
			this.showScreen("screenA");
			
			
			var screenD: ScreenD = new ScreenD();
			var screenNavItem4: ScreenNavigatorItem = new ScreenNavigatorItem(screenD, {
				"showScreenA": "screenA","showScreenE": "screenE"
			});
		    this.addScreen("screenD", screenNavItem4);
			
			this.showScreen("screenA");
			
			
			var screenE: ScreenE = new ScreenE();
			var screenNavItem5: ScreenNavigatorItem = new ScreenNavigatorItem(screenE, {
				"showScreenA": "screenA","showScreenE": "screenE"
			});
		    this.addScreen("screenE", screenNavItem5);
			
			this.showScreen("screenA");
		}
			
			
			
		}
		//YOURE ISSUE WITH CHANGING PAGES WAS YOU DIDNT LINK "showScreenC" 
		//to youre Screen B Navigation"
		
	}
	

