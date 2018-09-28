//
//  LIVR.swift
//  Pods-LivrDemo
//
//  Created by Felipe Lefèvre Marino on 9/18/18.
//

typealias LivrRulesDict = [String: LivrRule]

struct LIVR {
    
    static var defaultRules: LivrRulesDict = [CommonRules.Required.name: CommonRules.Required(),
                                              CommonRules.NotEmpty.name: CommonRules.NotEmpty(),
                                              NumericRules.Integer.name: NumericRules.Integer(),
                                              NumericRules.Decimal.name: NumericRules.Decimal(),
                                              NumericRules.PositiveInteger.name: NumericRules.PositiveInteger(),
                                              NumericRules.PositiveDecimal.name: NumericRules.PositiveDecimal(),
                                              StringRules.String.name: StringRules.String(),
                                              SpecialRules.URL.name: SpecialRules.URL(),
                                              SpecialRules.Email.name: SpecialRules.Email(),
                                              SpecialRules.ISODate.name: SpecialRules.ISODate(),
                                              CommonRules.NotEmptyList.name: CommonRules.NotEmptyList(),
                                              CommonRules.AnyObject.name: CommonRules.AnyObject(),
                                              StringRules.Eq.name: StringRules.Eq(),
                                              StringRules.OneOf.name: StringRules.OneOf(),
                                              StringRules.MaxLength.name: StringRules.MaxLength(),
                                              StringRules.MinLength.name: StringRules.MinLength(),
                                              StringRules.LengthBetween.name: StringRules.LengthBetween(),
                                              StringRules.LengthEqual.name: StringRules.LengthEqual(),
                                              StringRules.Like.name: StringRules.Like(),
                                              NumericRules.MaxNumber.name: NumericRules.MaxNumber(),
                                              NumericRules.MinNumber.name: NumericRules.MinNumber(),
                                              NumericRules.NumberBetween.name: NumericRules.NumberBetween()]
    
    public static func validator(validationRules: JSON) -> Validator {
        var validator = Validator(validationRules: validationRules)
        validator.register(defaultRules)
        return validator
    }
}
