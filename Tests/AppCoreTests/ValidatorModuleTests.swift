import XCTest
@testable import AppCore

final class ValidatorModuleTests: XCTestCase {
    
    
    func testIsValidMailInput_WithValidData_ShouldReturnTrue() {
        
        //Act
        let isVaildMail = ValidatorModule.isValidMailInput(input: "Soda@Soda.com")
        
        //Assert
        XCTAssertTrue(isVaildMail)
    }
    
    func testIsValidMailInput_WithInValidData_ShouldReturnFalse() {
        
        //Act
        let isVaildMail = ValidatorModule.isValidMailInput(input: "Soda.com")
        
        //Assert
        XCTAssertFalse(isVaildMail)
    }
    
    func testIsValidEmail_WithValidData_ShouldReturnTrue() {
        
        //Act
        let isVaildEmail = ValidatorModule.isValid(email: "Soda@Soda.com")
        
        //Assert
        XCTAssertTrue(isVaildEmail)
    }
    
    func testIsValidEmail_WithInValidData_ShouldReturnFalse() {
        
        //Act
        let isVaildEmail = ValidatorModule.isValid(email: "Soda.com")
        
        //Assert
        XCTAssertFalse(isVaildEmail)
    }
    
    func testIsValidName_WithValidData_ShouldReturnTrue() {
        
        //Act
        let isVaildName = ValidatorModule.isValid(name: "Soda")
        
        //Assert
        XCTAssertTrue(isVaildName)
    }
    
    func testIsValidName_WithInValidData_ShouldReturnFalse() {
        
        //Act
        let isVaildName = ValidatorModule.isValid(name: "233Soda")
        
        //Assert
        XCTAssertFalse(isVaildName)
    }
    
    func testIsValidPass_WithValidPass_ShouldReturnTrue() {
        
        //Act
        let isVaildpass = ValidatorModule.isValidPassword(password: "Soda#22A")
        
        //Assert
        XCTAssertTrue(isVaildpass)
    }
    
    func testIsValidPass_WithShortPass_ShouldReturnFalse() {
        
        //Act
        let isVaildpass = ValidatorModule.isValidPassword(password: "S#22A")
        
        //Assert
        XCTAssertFalse(isVaildpass)
    }
    
    func testIsValidPass_WithLongtPass_ShouldReturnFalse() {
        
        //Act
        let isVaildpass = ValidatorModule.isValidPassword(password: "S#22AADSw33333!fffvdvojdkdvkdpkv#Ddfv")
        
        //Assert
        XCTAssertFalse(isVaildpass)
    }
    
    func testIsValidURL_WithValidURL_ShouldReturnTrue() {
        
        //Act
        let isVaildURL = ValidatorModule.isValidUrl(url: "https://www.google.com")
        
        //Assert
        XCTAssertTrue(isVaildURL)
    }
    
    func testIsValidURL_WithInValidURL_ShouldReturnFalse() {
        
        //Act
        let isVaildURL = ValidatorModule.isValidUrl(url: "www.google.com")
        
        //Assert
        XCTAssertFalse(isVaildURL)
    }
    
    func testIsValidPhoneNumber_WithValidNumber_ShouldReturnTrue() {
        
        //Act
        let isVaildPhone = ValidatorModule.isValidPhoneNumber("+20113287456")
        
        //Assert
        XCTAssertTrue(isVaildPhone)
    }
    
    func testIsValidPhoneNumber_WithInValidNumber_ShouldReturnFalse() {
        
        //Act
        let isVaildPhone = ValidatorModule.isValidPhoneNumber("++20113287456")
        
        //Assert
        XCTAssertFalse(isVaildPhone)
    }
    
    func testIsValidUserName_WithValidName_ShouldReturnTrue() {
        
        //Act
        let isVaildUserName = ValidatorModule.isValidUsername(Username: "MrSoda22")
        
        //Assert
        XCTAssertTrue(isVaildUserName)
    }
    
    func testIsValidUserName_WithInValidName_ShouldReturnFalse() {
        
        //Act
        let isVaildUserName = ValidatorModule.isValidUsername(Username: "MRSODa3@@")
        
        //Assert
        XCTAssertFalse(isVaildUserName)
    }
}
