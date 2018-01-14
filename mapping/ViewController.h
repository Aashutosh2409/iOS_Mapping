//
//  ViewController.h
//  mapping
//
//  Created by Aashutosh Singh on 2/1/17.
//  Copyright © 2017 Aashutosh Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)changeMapView:(id)sender;
- (IBAction)ZoomOUT:(id)sender;


@end

